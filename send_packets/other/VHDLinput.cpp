#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <cassert>

class EventBuffer {
    public:
        EventBuffer(FILE* infile, FILE* outfile) : infile(infile), outfile(outfile) {}
        ~EventBuffer() {
            printf("Events written: %d \n", eventsread);
        }
        void ReadEvent() {
            fread(&header, 8, 1, infile);
            run = header >> 54;
            orbit = (header >> 24) & 0x3FFFFFFF;
            bx = (header >> 12) & 0xFFF;
            npuppi = (header & 0xFFF);
            puppibuf[0] = header;
            if (npuppi > 255) {
                uint surplus = npuppi - 255;
                npuppi = 255;
                fread(&puppibuf[1], 8, npuppi, infile);
                fread(ignorebuf, 8, surplus, infile);
            } else {
                fread(&puppibuf[1], 8, npuppi, infile);
            }
            for (uint i = npuppi; i < 255; ++i) { //fill rest of event with zeros
                puppibuf[i + 1] = 0;
            }
            if (npuppi > 400) {
                printf("ERROR: very large npuppi \n");
                printf("Event: %d \n", eventsread + 1);
                exit(1);
            }
            eventsread++;
        }
        void WriteEvent() {
            fprintf(outfile, "%04x%s", run, " ");
            fprintf(outfile, "%08x%s", orbit, " ");
            fprintf(outfile, "%04x%s", bx, " ");
            fprintf(outfile, "%04x%s", npuppi, " ");
            for (uint i = 0; i < 256; ++i) {
                fprintf(outfile, "%016llx%s", puppibuf[i], " ");
            }
            fprintf(outfile, "\n");
        }
    public:
        uint64_t header, puppibuf[256], ignorebuf[256];
        uint16_t run, bx, npuppi;
        uint32_t orbit;
        FILE *infile, *outfile;
        uint64_t eventsread = 0;
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
    outfile = fopen(argv[2], "w");
    assert(infile != NULL);
    assert(outfile != NULL);
    EventBuffer buffer(infile, outfile);
    while (!feof(infile) && buffer.eventsread < 1000) {
        buffer.ReadEvent();
        buffer.WriteEvent();
    }
    fclose(infile);
    fclose(outfile);
}