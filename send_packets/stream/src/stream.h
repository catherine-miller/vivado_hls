#ifndef stream_h
#define stream_h

#include <ap_int.h>

#define NPUPPI 256
#define NOUT 4

bool stream(const ap_uint<64> candin[NPUPPI], ap_uint<64> candout[NOUT], const bool eventstart, bool &lastvalid);

#endif
