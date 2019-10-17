#include <stdio.h>
#include <stdlib.h>
#include "arm_neon.h"

extern void neon_add3(uint8x16_t *data);
static uint8_t uint8_data[16];

void neon_test_init() {
	int i;
	for(i=0; i<16; i++) {
		uint8_data[i] = i; 
	}
}

void print_uint8 (uint8x16_t data, const char* name) {

	int i;
	static uint8_t p[16];

	vst1q_u8 (p, data);
	printf("name: %s\n", name);
	for (i = 0; i < 16; i++) {
		printf("%d ", p[i]);
	}
	printf ("\n");
}

void test_add3() {

	uint8x16_t data;

	data = vld1q_u8 (uint8_data); // load data
	print_uint8 (data, "data");
	neon_add3(&data);
	print_uint8 (data, "data (new)");
}

int main () {

	neon_test_init();
	test_add3();
	return 0;
}
