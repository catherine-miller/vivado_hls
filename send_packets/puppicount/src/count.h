#ifndef count_h
#define count_h

#include <ap_int.h>

#define MAXPUPPI 256

void count(const ap_uint<64> candin, ap_uint<64> &candout, const bool firstin, const bool lastin, const bool valid, bool &firstout, bool &lastout);

#endif