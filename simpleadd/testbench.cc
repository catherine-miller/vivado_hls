#include "src/func.h"
#include <cstdlib>
#include <cstdio>

int main() {
	srand(time(0));
	ap_int<10> a, b;
	for (unsigned int i = 0; i < 20; ++i) {
		a = rand() & 0xFF; //gets a random integer; 0xFF gets last 8 bits (?)
		b = rand() & 0xFF;
		int check_sum = a + b;
		ap_int<11> fret = adder(a, b);
		if (fret != check_sum) {
			printf("ERROR: test %d: sum = %d, while %d was expected\n", i, int(fret), check_sum);
			return 1;
			}
		else {
			printf("INFO: test %d: sum = %d, expected %d -- OK\n", i, int(fret), check_sum);
			}
		}
	}
