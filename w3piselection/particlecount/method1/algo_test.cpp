#include <cstdio>
#include "src/algo.h"

#define NTEST 100

int main() {
	srand(time(0));
	Particle particles[NPARTICLES];
	for (int test = 1; test <= NTEST; ++test) {
		for (unsigned int i = 0; i < NPARTICLES; ++i) {
			//generate a random number of particles, on average 60 particles/event, with maximum pt of 5 GeV
			if (rand()/float(RAND_MAX) <= 60./256.) particles[i].pt = int(rand()/float(RAND_MAX)*5/0.25);
			else particles[i].pt = 0; //i.e., a dummy particle
			}
		ap_int<9> hw = pcount(particles);
		ap_int<9> ref = pcount_ref(particles);
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
