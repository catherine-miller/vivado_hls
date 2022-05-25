#include "algo.h"
#include <cmath>

bool isocalc(Particle part, Particle otherpart[NPARTICLES]) {
	//returns isolation in units of 1/16
	#pragma HLS ARRAY_PARTITION variable=otherpart complete
	#pragma HLS pipeline II=1
	
	if (part.pt == 0) return -1; //if there is no particle
	int ptsum = 0;
	for (unsigned int i = 0; i < NPARTICLES; ++i) {
		#pragma HLS unroll
		int deta = part.eta - otherpart[i].eta;
		int dphi = part.phi - otherpart[i].phi;
		int drsq = deta*deta + dphi*dphi;
		bool incone (mindrsq < drsq and drsq <= maxdrsq); //is it inside the cone
		ap_int<16> z = 0; //don't ask why this is necessary
		ptsum += (incone ? otherpart[i].pt : z);
		}
	if (ptsum*10 <= 3*part.pt) return true; //ask for isolation < 0.3
	else return false;
}
