//format of Puppi candidates in buffer:
//bit 0: on if valid
//bit 1: on if first candidate
//bit 2: on if last candidate
//bits 2-66: candidate

//returns a bool indicating whether the Puppi candidate is valid
#include "stream.h"

bool streamv(const ap_uint<64> candin[NIN], ap_uint<64> &candout, 
    const bool eventstart, const bool lastvalid, bool &first, bool &last) {
        ap_uint<67> prep[NIN];
        static ap_uint<67> brams[NIN][512];
        static ap_uint<9> wrptr = 0; //writes into brams
        static ap_uint<9> rdptr = 0; //reads out of brams
        static ap_uint<9> ptrsep = 0;
        static ap_uint<4> readidx = 0;
        static bool write = false;
        bool valid, marked;

        #pragma HLS pipeline II = 1
        #pragma HLS array_partition variable=brams dim=1 complete
        #pragma HLS array_partition variable = candin complete
        #pragma HLS array_partition variable = prep complete

        //I made these separate for loops b/c HLS wouldn't increase latency otherwise
        if (eventstart) write = true;
        if (write) for (unsigned int i = 0; i < NIN; ++i) {
            #pragma HLS unroll
            prep[i](66,3) = candin[i];
            if (candin[i] == 0) prep[i][0] = 0; //turn off valid if 0
            else prep[i][0] = 1;
            if (eventstart && i == 0) prep[i][1] = 1; //does not require to be valid for eventstart
            else prep[i][1] = 0;
        }
        if (lastvalid) { //it may be nice eventually to make some assumptions to avoid this complicated searching for the last candidate
                //cannot unroll this I think
                marked = false;
                for (unsigned int i = 1; i <= NIN; ++i) {
                        if (marked == false && (prep[NIN - i][0])) {
                            prep[NIN - i][2] = 1; //check the valid bit and add "lastvalid" to the first valid cand in the row
                            marked = true;
                        } else prep[NIN - i][2] = 0;
                    }
            }
        if (write) {
            for (unsigned int i = 0; i < NIN; ++i) {
                #pragma HLS unroll
                brams[i][wrptr] = prep[i];
            } 
            wrptr++;
            ptrsep++;
        }
        if (lastvalid) write = false;
        if (ptrsep > 0) {
            valid = brams[readidx][rdptr][0];
            first = brams[readidx][rdptr][1];
            last = brams[readidx][rdptr][2];
            candout = brams[readidx][rdptr](66,3);
            if (readidx == NIN - 1) {
                rdptr++;
                ptrsep--;
            }
            readidx = (readidx + 1) % NIN;
            return valid;
        } else {
            first = false;
            last = false;
            candout = 0;
            return false;
        }
}
