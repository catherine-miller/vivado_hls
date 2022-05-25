#include "algo.h"

ap_int<9> lnzero(Particle particles[NPARTICLES]) {
	//returns index of last nonzero particle (e.g., if there are 256 particles will return 255)
	#pragma HLS ARRAY_PARTITION variable=particles.pt complete
    #pragma HLS pipeline II=1

int a1 [128];
for (unsigned int i = 0; i < 128; ++i) {
	#pragma HLS unroll
	a1[i] = (particles[2*i+1].pt == 0) ? ((particles[2*i].pt == 0) ? 0 : 2*i) : 2*i + 1;
}
int a2 [32];
for (unsigned int i = 0; i < 32; ++i) {
	#pragma HLS unroll
	a2[i] = (a1[2*i+1] == 0) ? a1[2*i] : a1[2*i+1];
}
int a3 [16];
for (unsigned int i = 0; i < 16; ++i) {
	#pragma HLS unroll
	a3[i] = (a2[2*i+1] == 0) ? a2[2*i] : a2[2*i+1];
}
int a4 [8];
for (unsigned int i = 0; i < 8; ++i) {
	#pragma HLS unroll
	a4[i] = (a3[2*i+1] == 0) ? a3[2*i] : a3[2*i+1];
}
int a5 [4];
for (unsigned int i = 0; i < 4; ++i) {
	#pragma HLS unroll
	a5[i] = (a4[2*i+1] == 0) ? a4[2*i] : a4[2*i+1];
}
int a6 [2];
for (unsigned int i = 0; i < 2; ++i) {
	#pragma HLS unroll
	a6[i] = (a5[2*i+1] == 0) ? a5[2*i] : a5[2*i+1];
}
return (a6[1] == 0) ? a6[0] : a6[1];
}
/*	int a7[2];
	for (unsigned int i = 0; i < 2; ++i) { //128
		#pragma HLS unroll
		int a6[2];
		for (unsigned int j = 0; j < 2; ++j) { //64
			#pragma HLS unroll
			int a5[2];
			for (unsigned int k = 0; k < 2; ++k) { //32
				#pragma HLS unroll
				int a4[2];
				for (unsigned int l = 0; l < 2; ++l) { //16
					#pragma HLS unroll
					int a3[2];
					for (unsigned int m = 0; m <2; ++m) { //8
						#pragma HLS unroll
						int a2[2];
						for (unsigned int n = 0; n <2; ++n) { //4
							#pragma HLS unroll
							int a1 [2];
							for (unsigned int o = 0; o < 2; ++ o) { //2
								#pragma HLS unroll
								unsigned int ii = (i << 7) + (j << 6) + (k << 5) + (l << 4) + (m << 3) + (n << 2) + (o << 1);
								a1[o] = (particles[ii+1].pt == 0) ? ii : ii+1;
								}
							a2 [n] = (particles[a1[1]].pt == 0) ? a1[0] : a1[1];
							}
						a3 [m] = (particles[a2[1]].pt == 0) ? a2[0] : a2[1];
						}
					a4 [l] = (particles[a3[1]].pt == 0) ? a3[0] : a3[1];
					}
				a5 [k] = (particles[a4[1]].pt == 0) ? a4[0] : a4[1];
				}
			a6 [j] = (particles[a5[1]].pt == 0) ? a5[0] : a5[1];
			}
		a7 [i] = (particles[a6[1]].pt == 0) ? a6[0] : a6[1];
		}
	return (particles[a7[1]].pt == 0) ? a7[0] : a7[1];
	}/*
/*	for (unsigned int i = 0; i < 128; ++i) {
		#pragma HLS unroll
		int a1 [128];
		bool retlower (particles[2*i].pt == 0);
		a1[i] &= retlower ? particles[2*i-1].pt : particles [2*i].pt;
	}
	for (unsigned int j = 0; j < 64; ++j) {
		#pragma HLS unroll
		int a2 [64];
		bool retlower (a1[2*j] == 0);
		a2[j] &= retlower ? a1[2*j-1] : a1[2*j];
	}
	for (unsigned int k = 0; k < 32; ++k) {
		#pragma HLS unroll
		int a3 [32];
		bool retlower (particles[2*k].pt == 0);
		a1[k] &= retlower ? particles[2*k-1].pt : particles [2*k].pt;
						for (unsigned int l = 0; l < 16; ++l) {
							#pragma HLS unroll
							int a4 [16];
							bool retlower (particles[2*l].pt == 0);
							a4[l] &= retlower ? particles[2*l-1].pt : particles [2*l].pt;
							for (unsigned int m = 0; m < 8; ++m) {
								#pragma HLS unroll
								int a5 [8];
								bool retlower (particles[2*m].pt == 0);
								a5[m] &= retlower ? particles[2*m-1].pt : particles [2*m].pt;
								for (unsigned int n = 0; n < 4; ++n) {
									#pragma HLS unroll
									int a6 [4];
									bool retlower (particles[2*n].pt == 0);
									a5[n] &= retlower ? particles[2*n-1].pt : particles [2*n].pt;
									for (unsigned int o = 0; o < 2; ++o) {
										#pragma HLS unroll
										int a7 [2];
										bool retlower (particles[2*o].pt == 0);
										a5[o] &= retlower ? particles[2*o-1].pt : particles [2*o].pt;
	/*for (unsigned int j = 0; j < 64; ++j) {
		#pragma HLS unroll
		int a2 [64];
		bool retlower (a[2*j] == 0);
		a1[j] &= retlower ? particles[2*j-1].pt : particles [2*j].pt;
			for (unsigned int k = 0; k < 32; ++k) {
				#pragma HLS unroll
				int a3 [32];
				bool retlower (particles[2*k].pt == 0);
				a1[k] &= retlower ? particles[2*k-1].pt : particles [2*k].pt;
					for (unsigned int l = 0; l < 16; ++l) {
						#pragma HLS unroll
						int a4 [16];
						bool retlower (particles[2*l].pt == 0);
						a4[l] &= retlower ? particles[2*l-1].pt : particles [2*l].pt;
						for (unsigned int m = 0; m < 8; ++m) {
							#pragma HLS unroll
							int a5 [8];
							bool retlower (particles[2*m].pt == 0);
							a5[m] &= retlower ? particles[2*m-1].pt : particles [2*m].pt;
							for (unsigned int n = 0; n < 4; ++n) {
								#pragma HLS unroll
								int a6 [4];
								bool retlower (particles[2*n].pt == 0);
								a5[n] &= retlower ? particles[2*n-1].pt : particles [2*n].pt;
								for (unsigned int o = 0; o < 2; ++o) {
									#pragma HLS unroll
									int a7 [2];
									bool retlower (particles[2*o].pt == 0);
									a5[o] &= retlower ? particles[2*o-1].pt : particles [2*o].pt;
						}
					}
	}
	*/
	/*ap_int<9> last = 255;
	for (unsigned int i = NPARTICLES - 1; i >= 0; --i) {
		#pragma HLS unroll	
		last -= (particles[i].pt == 0) ? 1 : 0;
		if (particles[i].pt != 0) return last;
		}
	return 0;*/

