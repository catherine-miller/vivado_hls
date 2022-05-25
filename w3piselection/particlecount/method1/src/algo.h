#ifndef ALGO_H
#define ALGO_H

#include <ap_int.h>

typedef ap_int<16> masspt_t; // 1 unit = 0.25 GeV; max = 8 TeV 
typedef ap_int<10> etaphi_t; // 1 unit = 0.01, max = 5.12
typedef ap_int<3> charge_t;

struct Particle {
        masspt_t pt;
        etaphi_t eta;
        etaphi_t phi;
        masspt_t mass;
	charge_t charge;
	};

#define NPARTICLES 256

//implementation to be synthesized
ap_int<9> pcount(Particle particles[NPARTICLES]); //is this necessary or can we make the result particles-1?

ap_int<9> pcount_ref(Particle particles[NPARTICLES]);

#endif
