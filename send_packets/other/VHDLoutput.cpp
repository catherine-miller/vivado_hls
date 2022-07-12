#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <cassert>
#define NOUT 5
#define CLKPEREVT 54
#define NPUPPI NOUT*CLKPEREVT

//simulates output of HLS module "stream"
//note that there is not exactly the same logic for determining the last valid row
class EventBuffer {
    public:
        EventBuffer(FILE* infile, FILE* outfile) : infile(infile), outfile(outfile) {}
        ~EventBuffer() {
            printf("Events written: %d \n", eventsread);
        }
        void ReadEvent() {
            fread(&header, 8, 1, infile);
            npuppi = (header & 0xFFF) + 1; //add 1 b/c we're treating header like candidate
            puppibuf[0] = header;
            if (npuppi > ((NPUPPI > 256) ? 256 : NPUPPI)) {
                uint surplus = npuppi - ((NPUPPI > 256) ? 256 : NPUPPI);
                npuppi = ((NPUPPI > 256) ? 256 : NPUPPI);
                fread(&puppibuf[1], 8, npuppi - 1, infile);
                fread(ignorebuf, 8, surplus, infile);
            } else {
                fread(&puppibuf[1], 8, npuppi - 1, infile);
            }
            for (uint i = npuppi; i < NPUPPI; ++i) {
                puppibuf[i] = 0; //fill rest of buffer with zeros
            }
            eventsread++;
        }
        void WriteEvent() {
            uint lastrow = npuppi / NOUT + ((npuppi % NOUT != 0) ? 1 : 0);
            for (uint i = 0; i < CLKPEREVT; ++i) {
                if (i == 0) eventstart = true;
                else eventstart = false;
                if (i == lastrow - 1) lastvalid = true;
                else lastvalid = false;
                WriteRow(i);
            }
        }
        void WriteRow(uint i) {
            fprintf(outfile, "%1d%s", eventstart, " ");
            fprintf(outfile, "%1d%s", lastvalid, " ");
            for (uint j = 0; j < NOUT; ++j) {
                fprintf(outfile, "%016llx%s", puppibuf[NOUT*i + j], " ");
            }
            fprintf(outfile, "\n");
        }
    public:
        uint64_t header, puppibuf[NPUPPI], ignorebuf[256];
        uint16_t npuppi;
        FILE *infile, *outfile;
        uint64_t eventsread = 0;
        bool eventstart, lastvalid;
};
int main(int argc, char**argv) {
    if (argc > 3) {
        printf("ERROR: Too many arguments; expected 3. \n");
        return 1;
    } else if  (argc < 3) {
        printf("ERROR: Too few arguments; expected 3. \n");
        return 1;
    }
    FILE *infile, *outfile;
    infile = fopen(argv[1], "r");
    outfile = fopen(argv[2], "w+");
    assert(infile != NULL);
    assert(outfile != NULL);
    //write first row of zeros
    fprintf(outfile, "%1d%s", 0, " ");
    fprintf(outfile, "%1d%s", 0, " ");
    for (uint j = 0; j < NOUT; ++j) {
        fprintf(outfile, "%016llx%s", 0, " ");
    }
    fprintf(outfile, "\n");
    //printf("wrote first row \n"); fflush(stdout);
    EventBuffer buffer(infile, outfile);
    while (!feof(infile) && buffer.eventsread < 1000) {
        buffer.ReadEvent();
        buffer.WriteEvent();
        //printf("wrote a row \n"); fflush(stdout);
    }
    fclose(infile);
    fclose(outfile);
}