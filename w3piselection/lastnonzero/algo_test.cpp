#include <cstdio>
#include "src/algo.h"
#include <algorithm>

#define NTEST 100

//function for sorting particle list by pts
bool comparept(Particle a, Particle b) {
	return (a.pt > b.pt);
	}

int main() {
	srand(time(0));
	Particle particles[NPARTICLES];
	for (int test = 1; test <= NTEST; ++test) {
		for (unsigned int i = 0; i < NPARTICLES; ++i) {
			//generate a random number of particles, on average 60 particles/event, with maximum pt of 5 GeV
			if (rand()/float(RAND_MAX) <= 60./256.) particles[i].pt = int(rand()/float(RAND_MAX)*5/0.25);
			else particles[i].pt = 0; //i.e., a dummy particle
			}
		std::sort(&particles[0], &particles[256], comparept);
		ap_int<9> hw = lnzero(particles);
		ap_int<9> ref = lnzero_ref(particles);
		if (hw != ref) {
                printf("ERROR in test %d\n Algo result     : %d\n Reference result: %d\n", test, int(hw), int(ref));
                return 1;
                }
        else {
                printf("INFO from test %d\n Algo result     : %d\n Reference result: %d\n", test, int(hw), int(ref));
                }
        }
        return 0;
}
