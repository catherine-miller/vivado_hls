#include "src/header.h"

#define CLKPEREVT 54
#define NTESTS 100

ap_uint<64> generateheader(ap_uint<12> &bx, ap_uint<30> &orbit, ap_uint<10> &run) {
    ap_uint<64> header;
    bx = rand() & 0xFFF;
    orbit = rand() & 0x3FFFFFFF;
    run = rand() & 0x3FF;
    header = ((unsigned long long)bx << 12) + ((unsigned long long)orbit << 24) + ((unsigned long long)run << 54);
    return header;
}

int main() {
    ap_uint<12> bx;
    ap_uint<30> orbit;
    ap_uint<10> run;
    ap_uint<64> simheader;
    ap_uint<64> algoheader;

    srand(125);

    for (uint n = 0; n < NTESTS; n++) {
        for (uint i = 0; i < CLKPEREVT; ++i) {
            if (i == 0) {
                simheader = generateheader(bx, orbit, run);
                algoheader = writeheader(bx, orbit, run, true);
                if (simheader != algoheader) {
                    printf("ERROR: sim header different from algo header \n");
                    printf("Test #%d", n);
                    return 1;
                }
            } else {
                algoheader = writeheader(bx, orbit, run, false);
                if (algoheader != 0) {
                    printf("ERROR: returned nonzero header when not at the start of an event \n");
                    printf("Test #%d", n);
                }
            }
        }
    }
    printf("Successfully completed %d tests", NTESTS);
    return 0;
}