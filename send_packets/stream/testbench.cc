#include "src/stream.h"
#define CLKPEREVT 54
#define NTESTS 500
#define NIN NOUT

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
	if (npuppi > 200) npuppi = 256; //just want to check the max case
	for (uint i = 0; i < npuppi; ++i) {
		v[i] = rand(); //(((uint64_t)(rand() & 0xFF) << 56) + ((uint64_t)rand() << 32) + rand()) & 0xFFFFFFFFFFFFFFFF; //this is a sloppy way of generating these but whatever
	}
	for (uint i = npuppi; i < NPUPPI; ++i) {
		v[i] = (ap_uint<64>)0;
	}
}
int main() {
	srand(126);
	ap_uint<64> candsout[NOUT];
	ap_uint<64> candsin[NPUPPI];
	unsigned int npuppi;
	bool start;
	bool lastvalid;
	ap_uint<64> hold[NOUT]; //csim hold
	uint64_t header;
for (uint n = 0; n < NTESTS; ++n) {
	for (uint i = 0; i < CLKPEREVT; ++i) {
		if (i == 0) {
			generateevent(candsin, npuppi, header);
			printf("Test #%d: npuppi = %d \n", n, npuppi);
			start = stream(header, candsin, candsout, true, lastvalid);
		} else start = stream(header, candsin, candsout, false, lastvalid);
		for (uint j = 0; j < NOUT; ++j) {
				if (((i*NOUT + j < NPUPPI + NOUT) ? (candsout[j] != hold[j]) : (candsout[j] != 0)) && (n != 0 || i != 0)) {
					printf("ERROR: test #%u, clock #%u, candidate #%u: \n", n, i, j);
					printf("Truth Puppi candidate: %llu, test Puppi candidate: %llu \n", hold[j], candsout[j]);
					return 1;
				} else if (npuppi != 0 && i*NOUT + j == npuppi + NOUT){
					if (lastvalid == false) {
						printf("ERROR: test #%u, clock #%u, candidate #%u: \n", n, i, j);
						printf("lastvalid == false but on last valid candidate \n");
						return 1;
					}
				} else if (((npuppi + NOUT)/ NOUT) != i) {
					if (lastvalid == true && i != 0) {
						printf("ERROR: test #%u, clock #%u, candidate #%u: \n", n, i, j);
						printf("lastvalid == true but not on last valid candidate \n");
						printf("npuppi = %d \n", npuppi);
						return 1;
					}

				}
				if (i + j == 0) hold[j] = header;
				else hold[j] = (i*NOUT + j < NPUPPI+1) ? candsin[i*NOUT + j - 1] : (ap_uint<64>)0;
		}
	}
}
return 0;
}
	
