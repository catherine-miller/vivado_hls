#include "algo.h"

ap_int<9> pcount(Particle particles[NPARTICLES]) {
	#pragma HLS ARRAY_PARTITION variable=particles.pt complete
        #pragma HLS pipeline II=1
	ap_int<9> nparticles = 0;
	for (unsigned int i = 0; i < NPARTICLES; ++i) {
		#pragma HLS unroll	
		nparticles += (particles[i].pt != 0) ? 1 : 0;
		}
	return nparticles;
}
