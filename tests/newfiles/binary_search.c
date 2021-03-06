#include <stdbool.h>
#include <stdlib.h>

#define N 16

bool declassify(bool x) {
    return x;
}
void oram_read(void *t, void* s, int idx) {
    *(int *)t = ((int *)s)[idx];
}

void ocCopy(void* r, void* t) {
    *(int *)r = *(int *)t;
}
int obinary_search_oram(void* result, int *haystack, void* needle) {
	for (int i = 1; i < N ; i++) {
		__builtin_assume(haystack[i-1] < haystack[i] );
	}

	// upper bound = logN + 1;
	int upper_bound = 4 + 1;

	int index = -1;
	int iimin = 0;
	int iimax = N - 1;
	int iimid;

	int *aa;
	int *bb = ((int *)needle);
	bool olt;
	bool oeq;
	void * temp_element = calloc(1, sizeof(int));

	bool eq;
	for (int ii = 0; ii < upper_bound; ii++) {
		iimid = (iimin + iimax) / 2;
		oram_read(temp_element, haystack, iimid);
		aa = (int *)temp_element;
		oeq = *aa == *bb;
		if (declassify(oeq)) {
			ocCopy(result, temp_element);
			index = iimid;
            break;
		}else{
			olt = *aa < *bb;
			if (olt) {
				iimin = iimid + 1;
			}else {
				iimax = iimid;
			}
		}
		
	}
	free(temp_element);
	return index;
}

int main() {
    return 0;
}