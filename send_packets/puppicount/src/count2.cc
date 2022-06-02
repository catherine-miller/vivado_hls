#include "count.h"

void count(const ap_uint<64> candin, ap_uint<64> &candout,
            const bool firstin, const bool lastin, const bool valid, bool &firstout, bool &lastout) {
        static ap_uint<66> buffer[8][256];
        static ap_uint<3> bufwridx = 0, bufrdidx = 1;
        static ap_uint<8> wrptr = 0, rdptr = 0, npuppi = 0;
        static bool write = false;
        static ap_uint<5> eventsready = 0;
        ap_uint<66> prep;

        #pragma HLS pipeline II = 1
        #pragma HLS array_partition variable=buffer dim=0 complete

        if (firstin) {
            npuppi = 0;
            wrptr = 0;
            write = true;
            bufwridx++;
        }
        if (write && valid) {
            prep(65,2) = candin;
            if (firstin) prep[0] = 1;
            else prep[0] = 0;
            if (lastin) prep[1] = 1;
            else prep[1] = 0;
            buffer[bufwridx][wrptr] = prep;
            npuppi++;
            wrptr++;
        }
        buffer[bufwridx][0](13, 2) = npuppi - 1;
        if (lastin) {
            //buffer[headerloc](13, 2) = npuppi - 1;
            //npuppi = 0;
            write = false;
            eventsready++;
        }
        if (eventsready > 0) {
            candout = buffer[bufrdidx][rdptr](65,2);
            firstout = (buffer[bufrdidx][rdptr][0]);
            lastout = (buffer[bufrdidx][rdptr][1]);
            rdptr++;
            if (lastout) {
                eventsready--;
                rdptr = 0;
                bufrdidx++;
            }
        } else {
            candout = 0;
            firstout = false;
            lastout = false;
        }
}