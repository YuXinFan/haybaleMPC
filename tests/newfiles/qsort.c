#include <stdio.h>


  
void Swap(int * l, int* r){
	int t = *l;
	*l = *r;
	*r = t;
}	

int Partition(int* arr, int low, int high)
{
	int i = low - 1;
	int pivot = arr[high];

	for (int j = low; j < high; j++){
		if ( arr[j] < pivot ){
			i = i + 1;
			Swap(&arr[i], &arr[j]);
		}
	}
	Swap(&arr[i+1], &arr[high]);
	return (i+1);
}

void Qsort(int* arr, int low, int high)
{
	if (low < high) {
		int pi = Partition(arr, low, high);
		Qsort(arr, low, pi-1);
		Qsort(arr, pi+1, high);
	}
}


int main()
{
	int arr[6] = {10, 7, 8, 9, 1, 5};
	int n = 6;
	Qsort(arr, 0, n-1);

	for (int i = 0; i < n; i++){
		printf("%d\n", arr[i]);
	}	
  return 0;
}