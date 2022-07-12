#include "src/stream.h"
#define NPUPPI 256
#define NOUT 4
#define CLKPEREVT 54;
#define NTESTS 1000;

ap_uint<64> writeheader(const ap_uint<12> bx, const ap_uint<30> orbit, const ap_uint<10> run, const bool write) {
    ap_uint<64> header;
    #pragma HLS pipeline II = 1
    if (write) {
        header(11,0) = 0; //npuppi 0 for now -- it will be modified later
        header(23,12) = bx;
        header(53,24) = orbit;
        header(63,54) = run;
        return header;
    } else return 0;
}
void generateevent(ap_uint<64> v[NPUPPI], unsigned int &npuppi, uint64_t &header) {
	unsigned long long bx, orbit, run;
	bx = rand() & 0xFFF;
    orbit = rand() & 0x3FFFFFFF;
    run = rand() & 0x3FF;
	header = writeheader(bx, orbit, run, true);
	npuppi = rand() % 256;
    unsigned int option = rand() % 5;
    if (option == 0 || option == 1) {
        npuppi = npuppi % 30;
    } else if (option == 2) {
        npuppi = npuppi % 40;
    } else if (option == 3) {
        npuppi = 1;
    }
	if (npuppi > 200) npuppi = 200; //for now just clipping events
    //later maybe want to test that "too large" events are clipped properly by the algorithm
	if (npuppi == 0) npuppi = 1;
    uint last = npuppi;
	for (uint i = 0; i < last; ++i) {
        if (rand() % 30 == 0 && i != 0) { //zeroing out some candidates
            v[i] = 0;
            npuppi -= 1;
        } else {
		    v[i] = rand() + (rand() << 20) & 0xFFFFFFFFFFFFFFFF;
            if (v[i] == 0) v[i] = 1;
        }
	}
	for (uint i = last; i < NPUPPI; ++i) {
		v[i] = (ap_uint<64>)0;
	}
}
bool streamtoM(const ap_uint<64> header, const ap_uint<64> cands[NPUPPI], ap_uint<64> outcands[NOUT], const bool eventstart, bool &lastvalid) {
	static ap_uint<64> scands[NPUPPI+NOUT+1] = {0};
	static ap_uint<64> hold[NOUT];
	static bool nextzeros, holdevtstart = false, retevtstart = false;
	static bool nonempty;
	nonempty = false;
	nextzeros = true;
	lastvalid = false;
	
	#pragma HLS pipeline II = 1
	#pragma HLS latency min=1
	#pragma HLS array_partition variable=cands complete
	#pragma HLS array_partition variable=outcands complete
	#pragma HLS array_partition variable=scands complete
	#pragma HLS array_partition variable=hold complete

	for (unsigned int i = 0; i < NPUPPI; ++i) {
        #pragma HLS unroll
		scands[i] = scands[i + NOUT];
        }
	if (eventstart) {
		scands[0] = header;
		for (unsigned int i = 0; i < NPUPPI; ++i) {
			#pragma HLS unroll
			scands[i + 1] = cands[i];
		}
	}
	for (unsigned int i = 0; i < NOUT; ++i) {
		#pragma HLS unroll
		outcands[i] = hold[i];
		if (hold[i] != 0) nonempty = true;
	}
	for (unsigned int i = 0; i < NOUT; ++i) {
		#pragma HLS unroll
		hold[i] = scands[i];
		if (scands[i] != 0) nextzeros = false;
	}
	//hold "eventstart" for one clock cycle before returning
	retevtstart = holdevtstart; 
	holdevtstart = eventstart;

	if (eventstart == true) nextzeros = true; //if we just read a new event, and we're not returning null Puppi candidates, we're at the last valid bits
	if (nonempty == true && nextzeros == true) lastvalid = true;
	return retevtstart;
}
void writetobuff(ap_uint<64> candsmiddle[NIN], bool &write, const bool eventstart, const bool lastvalid, 
                    ap_uint<11> &simwptr, ap_uint<64> buffer[NIN*512], ap_uint<9> &ptrsep) {
    if (eventstart) write = true;
    if (write) {
        for (unsigned int i = 0; i < NIN; ++i) {
            buffer[simwptr++] = candsmiddle[i];
        }
        ptrsep++;
    }
    if (lastvalid) write = false;
}
bool readfrombuff(ap_uint<64> buffer[NIN*512], ap_uint<64> &candoutsim, ap_uint<11> &simrptr, ap_uint<11> simwptr, ap_uint<9> &ptrsep, unsigned int &written) {
    if (ptrsep > 0) {
        candoutsim = buffer[simrptr++];
        written++; //this is dumb and sloppy but whatever
        if (written == NIN) {
            ptrsep--;
            written = written % NIN;
        }
        return (candoutsim != 0);
    }
    else {
        candoutsim = 0;
        return false;
    }
}
int main() {
    srand(125);
    static ap_uint<64> candsin[NPUPPI], candsmiddle[NOUT], candoutalgo, candoutsim, buffer[NIN*512];
    static unsigned int written = 0;
    static ap_uint<11> simwptr = 0, simrptr = 0;
    static ap_uint<9> ptrsep = 0;
    unsigned int npuppi, puppisim[256], npalgo = 0;
    static ap_uint<8> pidx = 0, prdidx = 0;
    static bool eventstart, lastvalid, flip = true; //flip: makes sure for every firstalgo there is a lastalgo
    static bool validalgo, firstalgo = false, lastalgo = false, validsim, npcheck = false;
    unsigned long long totout = 0;
    static bool write = false;
    static uint64_t header;
    for (unsigned int n = 0; n < 100; ++n) {
        for (unsigned int i = 0; i < 54; ++i) {
            if (i == 0) {
                generateevent(candsin, npuppi, header);
                totout += npuppi + (NIN - ((npuppi % NIN == 0) ? 0 : npuppi % NIN));
                eventstart = streamtoM(header, candsin, candsmiddle, true, lastvalid);
                printf("Event %d: npuppi = %d \n", n, npuppi);
                puppisim[pidx] = npuppi; pidx++;
            }
            else {
                eventstart = streamtoM(header, candsin, candsmiddle, false, lastvalid);
            }
            validalgo = streamv(candsmiddle, candoutalgo, eventstart, lastvalid, firstalgo, lastalgo);
            //csim
            writetobuff(candsmiddle, write, eventstart, lastvalid, simwptr, buffer, ptrsep);
            validsim = readfrombuff(buffer, candoutsim, simrptr, simwptr, ptrsep, written);
            if (candoutalgo != candoutsim) {
                printf("ERROR: algo Puppi candidate not equal to sim candidate. \n");
                printf("Algo: %llu, sim: %llu \n", (unsigned long long)candoutalgo, (unsigned long long)candoutsim);
                printf("ptrsep: %u, sim read pointer %u, sim write pointer %u \n", (unsigned int)ptrsep, (unsigned int)simrptr, (unsigned int)simwptr);
                printf("totpuppi = %u, now on the %u candidate out \n", totout, n*100 + i + 1);
                printf("npuppi = %llu \n", npuppi);
                printf("Test #%u, clock #%u \n", n, i);
                printf("first 4 Puppi candidates: %llu, %llu, %llu, %llu \n", (unsigned long long)candsin[0], (unsigned long long)candsin[1], (unsigned long long)candsin[2], (unsigned long long)candsin[3]);
                return 1;
            } else if (validalgo != validsim) {
                printf("ERROR: algo Puppi candidate is ");
                (validalgo) ? printf("valid,") : printf("invalid,");
                printf(" while sim Puppi candidate is ");
                (validsim) ? printf ("valid. \n") : printf("invalid. \n");
                printf("Algo: %llu, sim: %llu \n", (unsigned long long)candoutalgo, (unsigned long long)candoutsim);
                printf("Test #%u, clock #%u \n", n, i);
                return 1;
            } else {
                printf("Test #%u, clock #%u: candidates matching \n", n, i);
            }
            //check that for every firstalgo there is a lastalgo
            if (firstalgo) printf("received firstalgo \n"); fflush(stdout);
            if (lastalgo) printf("received lastalgo \n"); fflush(stdout);
            if (firstalgo xor lastalgo) flip = !flip;
            if (((firstalgo && flip) || (lastalgo && !flip)) && (firstalgo != lastalgo)) {
                printf("ERROR: number of firstalgo and lastalgo doesn't match \n");
                printf("Last received %s \n", (flip ? "firstalgo" : "lastalgo"));
                printf("Test #%u, clock #%u \n", n, i);
                printf("firstalgo: %i, lastalgo: %i, flip: %i", firstalgo, lastalgo, flip);
                return 1;
            }
            //count the puppi candidates that come out
            if (firstalgo) {
                npcheck = true;
                npalgo = 0;
            }
            if (npcheck) {
                if (validalgo) npalgo++;
            }
            if (lastalgo) {
                npcheck = false;
                if (npalgo - 1 != puppisim[prdidx]) {
                    printf("ERROR: sim npuppi not equal to algo npuppi \n");
                    printf("sim npuppi: %d, algo npuppi: %d \n", puppisim[prdidx], npalgo - 1);
                    return 1;
                }
                prdidx++;
            }
        }
    }
    return 0;
}