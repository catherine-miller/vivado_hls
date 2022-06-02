#ifndef streamv_h
#define streamv_h

#include <ap_int.h>

#define NIN 4

bool streamv(const ap_uint<64> candin[NIN], ap_uint<64> &candout, const bool eventstart, const bool lastvalid, bool &first, bool &last);

#endif