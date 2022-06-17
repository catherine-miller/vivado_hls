#include "header.h"

ap_uint<64> writeheader(const ap_uint<12> bx, const ap_uint<30> orbit, const ap_uint<10> run, const bool write) {
    ap_uint<64> header;
    #pragma HLS pipeline II = 1
    if (write) {
        header(11,0) = 0; //npuppi 0 for now -- it will be modified later
        header(23,12) = bx;
        header(53,24) = orbit;
        header(63,54) = run;
        return header;
    } else return 0;
}