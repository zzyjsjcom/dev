#include <stdio.h>
#include <stdlib.h>

extern int sve_strlen(const char *str);
#define TEST_STR "hello sve"

int main() {

	int len = sve_strlen(TEST_STR);

	printf("len=%d of \"%s\"\n", len, TEST_STR);
 
	return 0;
}
