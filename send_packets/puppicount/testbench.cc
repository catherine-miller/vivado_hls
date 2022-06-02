#include "src/count.h"
#define NPUPPI 256
#define NOUT 4
#define NIN NOUT
#define NTESTS 400
#define NBUFFS 16

void generateevent(ap_uint<64> v[NPUPPI], unsigned int &npuppi) {
	npuppi = rand() % 256;
    unsigned int option = rand() % 5;
    if (option == 0 || option == 1) {
        npuppi = npuppi % 30;
    } else if (option == 2) {
        npuppi = npuppi % 40;
    } else if (option == 3) {
        npuppi = 1;
    }
	if (npuppi > 216) npuppi = 216; //for now just clipping events
    //later maybe want to test that "too large" events are clipped properly by the algorithm
	if (npuppi == 0) npuppi = 1;
    uint last = npuppi;
	for (uint i = 0; i < last; ++i) {
        if (rand() % 30 == 0 && i != 0) {
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
bool stream(const ap_uint<64> cands[NPUPPI], ap_uint<64> outcands[NOUT], const bool eventstart, bool &lastvalid) {
	static ap_uint<64> scands[NPUPPI+NOUT] = {0};
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
		for (unsigned int i = 0; i < NPUPPI; ++i) {
			#pragma HLS unroll
			scands[i] = cands[i];
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
bool streamv(const ap_uint<64> candin[NIN], ap_uint<64> &candout, 
    const bool eventstart, const bool lastvalid, bool &first, bool &last) {
        ap_uint<67> prep[NIN];
        static ap_uint<67> brams[NIN][512];
        static ap_uint<9> wrptr1 = 0; //writes into brams
        static ap_uint<9> rdptr1 = 0; //reads out of brams
        static ap_uint<9> ptrsep = 0;
        static ap_uint<4> readidx = 0;
        static bool write1 = false;
        bool valid, marked;

        #pragma HLS pipeline II = 1
        #pragma HLS array_partition variable=brams dim=1 complete
        #pragma HLS array_partition variable = candin complete
        #pragma HLS array_partition variable = prep complete

        //I made these separate for loops b/c HLS wouldn't increase latency otherwise
        if (eventstart) write1 = true;
        if (write1) for (unsigned int i = 0; i < NIN; ++i) {
            #pragma HLS unroll
            prep[i](66,3) = candin[i];
            if (candin[i] == 0) prep[i][0] = 0; //turn off valid if 0
            else prep[i][0] = 1;
            if (eventstart && i == 0 && (prep[0][0])) {
            	prep[0][1] = 1;
            }
            else prep[i][1] = 0;
            if (eventstart && !prep[0][0]) {
                printf("error: first Puppi candidate invalid \n");
                exit(1);
            }
        }
        if (lastvalid) { //it may be nice eventually to make some assumptions to avoid this complicated searching for the last candidate
                //cannot unroll this I think
                marked = false;
                for (unsigned int i = 1; i <= NIN; ++i) {
                        if (marked == false && (prep[NIN - i][0])) {
                            prep[NIN - i][2] = 1; //check the valid bit and add "lastvalid" to the first valid cand in the row
                            marked = true;
                        } else prep[NIN - i][2] = 0;
                    }
            }
        if (write1) {
            for (unsigned int i = 0; i < NIN; ++i) {
                #pragma HLS unroll
                brams[i][wrptr1] = prep[i];
            } 
            wrptr1++;
            ptrsep++;
        }
        if (lastvalid) write1 = false;
        if (ptrsep > 0) {
            valid = brams[readidx][rdptr1][0];
            first = brams[readidx][rdptr1][1];
            last = brams[readidx][rdptr1][2];
            candout = brams[readidx][rdptr1](66,3);
            if (readidx == NIN - 1) {
                rdptr1++;
                ptrsep--;
            }
            readidx = (readidx + 1) % NIN;
            return valid;
        } else {
            first = false;
            last = false;
            candout = 0;
            return false;
        }
}
int main() {
    ap_uint<64> cands1[NPUPPI], cands2[NOUT], cand3, candoutalgo;
    ap_uint<64> candstest[NBUFFS][NPUPPI];
    unsigned int testwridx = 0, testrdidx = 0, checkidx, puppi[NBUFFS];
    unsigned int npuppi1;
    bool first1, last1, first2, last2, firstalgo, lastalgo, valid, check = false;
    srand(125);
    int u1 = 0, u2 = 0;
    for (unsigned int n = 0; n < NTESTS; ++n) {
        for (unsigned int i = 0; i < 54; ++i) {
            if (i == 0) {
                generateevent(cands1, npuppi1);
                first1 = stream(cands1, cands2, true, last1);
                for (unsigned int j = 0; j < NPUPPI; ++j) {
                    candstest[testwridx][j] = cands1[j];
                    //still preserving zeroed out candidates
                }
                puppi[testwridx] = npuppi1;
                testwridx = (testwridx + 1) % NBUFFS;
            } else {
                first1 = stream(cands1, cands2, false, last1);
            }
            valid = streamv(cands2, cand3, first1, last1, first2, last2);
            if (first2 && last2 && !valid) {
                printf("ERROR: only Puppi candidate in the event is invalid \n");
                return 1;
            }
            count(cand3, candoutalgo, first2, last2, valid, firstalgo, lastalgo);
            if (firstalgo) {
                check = true;
                checkidx = 0;
                printf("received firstalgo \n");
                if (lastalgo) printf("also received lastalgo \n");
            }
            if (check) {
                while (candstest[testrdidx][checkidx] == 0) {
                	checkidx++; //skip over zeros
                	printf("skipping a Puppi candidate \n"); fflush(stdout);
                }
                if (candoutalgo != candstest[testrdidx][checkidx] && !firstalgo) {
                    printf("ERROR: test candidate not equal to algo candidate \n");
                    printf("test candidate: %llu, algo candidate: %llu \n", (unsigned long long)candstest[testrdidx][checkidx], (unsigned long long)candoutalgo);
                    printf("checkidx: %lu, npuppi: %llu \n", checkidx, (unsigned long long)puppi[testrdidx]);
                    printf("firstalgo = %d, lastalgo = %d \n", firstalgo, lastalgo);
                    printf("Clock #%d, test #%d \n", i, n);
                    return 1;
                }
                if (firstalgo) {
                    if (candoutalgo(11,0)+1 != puppi[testrdidx]) {
                        printf("ERROR: test npuppi not equal to algo npuppi \n");
                        printf("test npuppi = %llu, algo npuppi = %u \n", (unsigned long long)puppi[testrdidx], (unsigned int)candoutalgo(11,0));
                        printf("Algo (header) candidate: %llu \n", (unsigned long long)candoutalgo);
                        printf("Clock #%d, test #%d \n", i, n);
                        return 1;
                    }
                    else {
                    	printf("Test %d: npuppi matching; npuppi = %llu \n", n, (unsigned long long)puppi[testrdidx]); fflush(stdout);
                        checkidx++;
                    }
                } else {
                	printf("Test %d, Puppi candidate %d matching \n", n, checkidx);
                	printf("Sim candidate: %llu, algo candidate: %llu \n", (unsigned long long)candstest[testrdidx][checkidx], (unsigned long long)candoutalgo);
                    checkidx++;
                }
                if (n % 10 == 0 && i == 0) printf("Test %d successful \n", n);
            }
            if (lastalgo) {
                check = false;
                testrdidx = (testrdidx + 1) % NBUFFS;
                printf("received lastalgo \n");
            }
        }
    }
return 0;
}
