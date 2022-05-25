#include "src/algo.h"
#include <cmath>

ap_int<9> lnzero_ref(Particle particles[NPARTICLES]) {
	//finds the last nonzero element (i.e., the index of the last real particle)
	for (unsigned int i = NPARTICLES - 1; i >= 0; --i) {
		if (particles[i].pt != 0) return i;
		}
	return 0;
}
