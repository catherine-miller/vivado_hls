#include "src/stream.h"
#define CLKPEREVT 54
#define NTESTS 500

void generateevent(ap_uint<64> v[NPUPPI], unsigned int &npuppi) {
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
	srand(125);
	ap_uint<64> candsout[NOUT];
	ap_uint<64> candsin[NPUPPI];
	unsigned int npuppi;
	bool start;
	bool lastvalid;
	ap_uint<64> hold[NOUT]; //csim hold
for (uint n = 0; n < NTESTS; ++n) {
	for (uint i = 0; i < CLKPEREVT; ++i) {
		if (i == 0) {
			generateevent(candsin, npuppi);
			start = stream(candsin, candsout, true, lastvalid);
		} else start = stream(candsin, candsout, false, lastvalid);
			for (uint j = 0; j < NOUT; ++j) {
					if (((i*NOUT + j < NPUPPI + NOUT) ? (candsout[j] != hold[j]) : (candsout[j] != 0)) && (n != 0 || i != 0)) {
						printf("ERROR: test #%u, clock #%u, candidate #%u: \n", n, i, j);
						printf("Truth Puppi candidate: %llu, test Puppi candidate: %llu \n", hold[j], candsout[j]);
						return 1;
						} else if (npuppi != 0 && i*NOUT + j == npuppi + NOUT -1){
							if (lastvalid == false) {
								printf("ERROR: test #%u, clock #%u, candidate #%u: \n", n, i, j);
								printf("lastvalid == false but on last valid candidate \n");
								return 1;
							}
						} else if (((npuppi + NOUT - 1) / NOUT) != i) {
							if (lastvalid == true) {
								printf("ERROR: test #%u, clock #%u, candidate #%u: \n", n, i, j);
								printf("lastvalid == true but not on last valid candidate \n");
								return 1;
							}

						}
					hold[j] = (i*NOUT + j < NPUPPI) ? candsin[i*NOUT + j] : (ap_uint<64>)0;
			}
	}
}
return 0;
}
	
