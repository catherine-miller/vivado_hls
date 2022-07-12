#include "count.h"
//bit 0: firstout
//bit 1: lastout
//bit 2: header word

void count(const ap_uint<64> candin, ap_uint<64> &candout, ap_uint<48> src, ap_uint<48> dest,
            const bool firstin, const bool lastin, const bool valid, bool &firstout, bool &lastout) {
        static ap_uint<67> buffer[256];
        static ap_uint<8> wrptr = 0, rdptr = 0, headerloc, npptr = 0, nprdptr = 0;
        static ap_uint<12> npbuffer[256], npuppi = 0;
        static bool write = false;
        static ap_uint<5> eventsready = 0;
        static ap_uint<16> packetno = 0;
        static ap_uint<67> etherheader[2] = {0};
        static ap_uint<4> ethertype = 0xAABB;
        ap_uint<67> prep;

        #pragma HLS pipeline II = 1
        #pragma HLS array_partition variable = buffer complete
        #pragma HLS array_partition variable = npbuffer complete
        
        if (firstin) {
            npuppi = 0;
            write = true;
            etherheader[0](66,19) = dest;
            etherheader[0](18, 3) = src(47, 32);
            etherheader[0][0] = 1;
            etherheader[0][2] = 0;
            etherheader[1][2] = 0;
            etherheader[1](66, 35) = src(31, 0);
            etherheader[1](34, 3) = packetno;
            packetno++;
            buffer[wrptr] = etherheader[0];
            wrptr++;
            buffer[wrptr] = etherheader[1];
            wrptr++;
        }
        if (write && valid) {
            prep(66,3) = candin;
            prep[0] = 0;
            if (lastin && npuppi > 4) prep[1] = 1; //if npuppi <= 4, will pad then mark lastin
            else prep[1] = 0;
            if (firstin) prep[2] = 1;
            else prep[2] = 0;
            buffer[wrptr] = prep;
            npuppi++;
            wrptr++;
        }
        if (lastin) {
            write = false;
            eventsready++;
            npbuffer[npptr] = npuppi - 1; //we have counted the header, so we have to subtract 1
            npptr++;
            while (npuppi < 6) {
                //#pragma HLS unroll
                buffer[wrptr] = 0;
                npuppi++;
                if (npuppi == 6) buffer[wrptr][1] = 1;
                wrptr++;
            }
        }
        if (eventsready > 0) {
            firstout = (buffer[rdptr][0]);
            lastout = (buffer[rdptr][1]);
            if (buffer[rdptr][2]) { //header
                candout(63,12) = buffer[rdptr](66,15);
                candout(11,0) = npbuffer[nprdptr];
                nprdptr++;
            } else candout = buffer[rdptr](66,3);
            if (lastout) eventsready--;
            rdptr++;
        } else {
            candout = 0;
            firstout = false;
            lastout = false;
        }
}