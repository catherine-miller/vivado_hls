#include "count.h"

void count(const ap_uint<64> candin, ap_uint<64> &candout,
            const bool firstin, const bool lastin, const bool valid, bool &firstout, bool &lastout) {
        static ap_uint<66> buffer[256];
        static ap_uint<8> wrptr = 0, rdptr = 0, headerloc, npptr = 0, nprdptr = 0;
        static ap_uint<12> npbuffer[256], npuppi = 0;
        static bool write = false;
        static ap_uint<5> eventsready = 0;
        ap_uint<66> prep;

        #pragma HLS pipeline II = 1
        #pragma HLS array_partition variable=buffer complete
        #pragma HLS array_partition variable=npbuffer complete

        if (firstin) {
            npuppi = 0;
            write = true;
        }
        if (write && valid) {
            prep(65,2) = candin;
            if (firstin) prep[0] = 1;
            else prep[0] = 0;
            if (lastin) prep[1] = 1;
            else prep[1] = 0;
            buffer[wrptr] = prep;
            npuppi++;
            wrptr++;
        }
        if (lastin) {
            write = false;
            eventsready++;
            npbuffer[npptr] = npuppi - 1;
            npptr++;
        }
        if (eventsready > 0) {
            firstout = (buffer[rdptr][0]);
            lastout = (buffer[rdptr][1]);
            if (firstout) {
                candout(63,12) = buffer[rdptr](65,14);
                candout(11,0) = npbuffer[nprdptr];
                nprdptr++;
            } else candout = buffer[rdptr](65,2);
            if (lastout) eventsready--;
            rdptr++;
        } else {
            candout = 0;
            firstout = false;
            lastout = false;
        }
}