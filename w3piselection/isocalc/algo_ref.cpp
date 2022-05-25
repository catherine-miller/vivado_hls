#include "src/data.h"
#include "src/algo.h"
#include <cmath>
bool isocalc_ref(Particle part, Particle p[NPARTICLES]) {
	//returns isolation in units of 1/16
	int ptsum = 0;
	ap_int<6> incone = 0;
	for (unsigned int i = 0; i < NPARTICLES; ++i) {
		int drsq = (p[i].eta-part.eta)*(p[i].eta-part.eta) + (p[i].phi-part.phi)*(p[i].phi-part.phi);
		if (mindrsq < drsq and drsq <= maxdrsq) {
			ptsum += p[i].pt;
			incone +=1;
		}
	}
	if (ptsum*10 <= part.pt*3) return true;
	else return false;
}
