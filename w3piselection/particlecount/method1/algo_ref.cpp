#include "src/algo.h"
#include <cmath>

ap_int<9> pcount_ref(Particle particles[NPARTICLES]) {
	int particlecount = 0;
	for (unsigned int i = 0; i < NPARTICLES; ++i) {
		if (particles[i].pt != 0) particlecount += 1;
		}
	return particlecount;
}
