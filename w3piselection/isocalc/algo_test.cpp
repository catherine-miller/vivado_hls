#include <cstdio>
#include "src/algo.h"
//#include <iostream>

#define NTEST 100

int main() {
    srand(time(0));
    Particle otherpart[NPARTICLES];
    Particle part;
    part.pt  = int((rand()/float(RAND_MAX) * 20)/0.25);
    part.eta = int((rand()/float(RAND_MAX/2) - 1)*5 / 0.01);
    part.phi = int((rand()/float(RAND_MAX/2)-1)*3.1415/ 0.01);
    for (int test = 1; test <= NTEST; ++test) {
        for (int i = 0; i < NPARTICLES; ++i) {
            otherpart[i].pt  = int((rand()/float(RAND_MAX) * 5 )/0.25);
            otherpart[i].eta = int((rand()/float(RAND_MAX/2) - 1)*5 / 0.01);
            otherpart[i].phi = int((rand()/float(RAND_MAX/2)-1)*3.1415/ 0.01);
        	}
	bool hw = isocalc(part, otherpart);
	bool ref = isocalc_ref(part, otherpart);
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
