#ifndef count_h
#define count_h

#include <ap_int.h>

#define MAXPUPPI 256
//#define PREAMBLE 10101010 10101010 10101010 10101010 10101010 10101010 10101010 10101011
#define DFLTSRC 0x112233445566
#define DFLTDST 0x665544332211

void count(const ap_uint<64> candin, ap_uint<64> &candout, ap_uint<48> src, ap_uint<48> dest,
            const bool firstin, const bool lastin, const bool valid, bool &firstout, bool &lastout);

#endif
