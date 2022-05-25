#include "stream.h"

bool stream(const ap_uint<64> cands[NPUPPI], ap_uint<64> outcands[NOUT], const bool eventstart, bool &lastvalid) {
	static ap_uint<64> scands[NPUPPI+NOUT] = {0};
	static ap_uint<64> hold[NOUT];
	static bool nextzeros, holdevtstart = false, retevtstart = false;
	static bool nonempty;
	nonempty = false;
	nextzeros = true;
	lastvalid = false;
	
	#pragma HLS pipeline II = 1
	#pragma HLS latency min=1
	#pragma HLS array_partition variable=cands complete
	#pragma HLS array_partition variable=outcands complete
	#pragma HLS array_partition variable=scands complete
	#pragma HLS array_partition variable=hold complete

	for (unsigned int i = 0; i < NPUPPI; ++i) {
        #pragma HLS unroll
		scands[i] = scands[i + NOUT];
        }
	if (eventstart) {
		for (unsigned int i = 0; i < NPUPPI; ++i) {
			#pragma HLS unroll
			scands[i] = cands[i];
		}
	}
	for (unsigned int i = 0; i < NOUT; ++i) {
		#pragma HLS unroll
		outcands[i] = hold[i];
		if (hold[i] != 0) nonempty = true;
	}
	for (unsigned int i = 0; i < NOUT; ++i) {
		#pragma HLS unroll
		hold[i] = scands[i];
		if (scands[i] != 0) nextzeros = false;
	}
	//hold "eventstart" for one clock cycle before returning
	retevtstart = holdevtstart; 
	holdevtstart = eventstart;

	if (eventstart == true) nextzeros = true; //if we just read a new event, and we're not returning null Puppi candidates, we're at the last valid bits
	if (nonempty == true && nextzeros == true) lastvalid = true;
	return retevtstart;
}
		
