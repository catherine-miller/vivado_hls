#ifndef header_h
#define header_h

#include <ap_int.h>

ap_uint<64> writeheader(const ap_uint<12> bx, const ap_uint<30> orbit, const ap_uint<10> run, const bool write);

#endif