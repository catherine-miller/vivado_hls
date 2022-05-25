#ifndef ALGO_DATA_H
#define ALGO_DATA_H

#include <ap_int.h>

typedef ap_int<16> pt_t; // 1 unit = 0.25 GeV; max = 8 TeV 
typedef ap_int<10> etaphi_t; // 1 unit = 0.01, max = 5.12

struct Particle {
	pt_t pt;
	etaphi_t eta;
	etaphi_t phi;
	};

#define NPARTICLES 100 // algo will always take 20 particles and if you don't have enough make fake ones

//define size of cone in which to calculate isolation:
#define mindrsq 1 // i.e., minimum dr is 0.01
#define maxdrsq 625 // i.e., maximum dr is 0.25
#define maxiso 0.3
#endif
