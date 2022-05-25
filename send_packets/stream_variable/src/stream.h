#ifndef stream_h
#define stream_h

#include <ap_int.h>

#define NIN 4

bool stream(const ap_uint<64> candin[NIN], ap_uint<64> &candout, const bool eventstart, const bool lastvalid, bool &first, bool &last);

#endif