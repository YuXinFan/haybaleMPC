#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void print_array(char * c, uint *a, int len, int elen) {
	printf("%s: ", c);
	for (int i = 0; i < len; i++) {
		for (int k = 0; k < elen; k++) {
			printf("%d,", a[i*elen+k]);
		}
		printf("\n");
	}
	printf("\n");
}

// A structure to represent a queue
typedef struct Queue {
    int front, rear, size;
    unsigned capacity;
    uint* array;
} Queue;
 
// function to create a queue
// of given capacity.
// It initializes size of queue as 0
struct Queue* createQueue(unsigned capacity)
{
    struct Queue* queue = (struct Queue*)malloc(
        sizeof(struct Queue));
    queue->capacity = capacity;
    queue->front = queue->size = 0;
 
    // This is important, see the enqueue
    queue->rear = capacity - 1;
    queue->array = (uint*)malloc(
        queue->capacity * 2 * sizeof(uint));
    return queue;
}
 

 
// Queue is empty when size is 0
int oqueue_empty(struct Queue* queue)
{
    return (queue->size == 0);
}
 
// Function to add an item to the queue.
// It changes rear and size
void oqueue_push(struct Queue* queue, uint *item)
{
    queue->rear = (queue->rear + 1)
                  % queue->capacity;
    queue->array[queue->rear*2] = item[0];
    queue->array[queue->rear*2+1] = item[1];
    queue->size = queue->size + 1;
    //printf("%d enqueued to queue\n", item);
}
 
// Function to remove an item from queue.
// It changes front and size
void oqueue_pop(uint * item, struct Queue* queue)
{
    item[0] = queue->array[queue->front*2];
	item[1] = queue->array[queue->front*2+1];
    queue->front = (queue->front + 1)
                   % queue->capacity;
    queue->size = queue->size - 1;
}
 

void oram_read(uint * output, uint * o, int index, int len) {
	for (int i = 0; i < len; i++) {
		output[i] = o[index*len + i];
	}
	//ocCopy(o->cpy, output, element(o->cpy, o->data, index));
}
void oram_write(uint * o, uint * input, int index, int len) {
  for (int i = 0; i < len; i++) {
		o[index*len + i] = input[i] ;
	}
  //ocCopy(o->cpy, element(o->cpy, o->data, ii), input);
}
static void wStatusFunction(void * oramBlock, void * extBlock){
	if (((int *) extBlock)[1] < ((int *) oramBlock)[1] | ((int *) oramBlock)[1] == -1) {
		int temp = ((int *) extBlock)[0];
		((int *) extBlock)[0] = ((int *) oramBlock)[0];
		((int *) oramBlock)[0] = temp;

		temp = ((int *) extBlock)[1];
		((int *) extBlock)[1] = ((int *) oramBlock)[1];
		((int *) oramBlock)[1] = temp;

		temp = ((int *) extBlock)[2];
		((int *) extBlock)[2] = ((int *) oramBlock)[2];
		((int *) oramBlock)[2] = temp;
	} else {
		((int *) extBlock)[1] = ((int *) oramBlock)[1];
	}
}

void oram_apply(uint  * o, uint * input, int index) {
	wStatusFunction(o+index*3, input);
	//fn(o->cpy, element(o->cpy, o->data, index), input);
}
void oqueue_free(Queue* q) {
	free(q->array);
	q->array = NULL;
	free(q);
}

void oram_free(void *v){
	free(v);
}

uint* ogale_shapley_textbook_revealed(uint * output,  uint * mPrefsRaw, uint * wPrefsRaw, int n) {

	for (int i = 0; i < n*n; i++) {
		__builtin_assume(mPrefsRaw[i]>=0 && mPrefsRaw[i]<n);
		__builtin_assume(wPrefsRaw[i]>=0 && wPrefsRaw[i]<n);
	}
	for (int i = 0; i < n; i++) {
		__builtin_assume(mPrefsRaw[i*n] == 0 || mPrefsRaw[i*n+1] == 0);
		__builtin_assume(mPrefsRaw[i*n] == 1 || wPrefsRaw[i*n+1] == 1);
		__builtin_assume(wPrefsRaw[i*n] == 0 || mPrefsRaw[i*n+1] == 0);
		__builtin_assume(wPrefsRaw[i*n] == 1 || wPrefsRaw[i*n+1] == 1);
	}
	uint *mPrefs = calloc(n*n, sizeof(uint));
	for (int i = 0; i < n*n; i++) {
		mPrefs[i] = mPrefsRaw[i];
	}
	//oram * mPrefs = oram_from_array(ORAM_TYPE_AUTO, &ocCopyInt, n * n, mPrefsRaw); // ordered by rank; elements represent partner index
	uint *wPrefs = malloc(n*n*sizeof(uint));
	//oram * wPrefs = oram_new(ORAM_TYPE_AUTO, &ocCopyInt, n * n); // ordered by partner index; elements represent rank
	uint *mStatus = malloc(2*n*sizeof(uint));
	uint *wStatus = malloc(3*n*sizeof(uint));
	//oram * mStatus = oram_new(ORAM_TYPE_AUTO, &cpy2, n);
	//oram * wStatus = oram_new(ORAM_TYPE_AUTO, &cpy3, n);

	//insert wprefs into oram
	for (int ii = 0; ii < n; ii++) {
		for (uint jj = 0; jj < n; jj++) {
			oram_write(wPrefs, &jj, ii*n + wPrefsRaw[ii * n + jj], 1); 
		}
	}
	//print_array("mPrefs", mPrefs, n, n);

	//print_array("wPrefs", wPrefs, n, n);

	Queue *mQueue = createQueue(n*n);
	//oqueue * mQueue = oqueue_new_static(&cpy2, n);
	uint thisMQueue[2]; // [index, pref list pos]
	uint nextMQueue[2]; // [index, pref list pos]
	uint thisMStatus[2]; // [parter index, partner rating] 
	uint thisWStatus[3]; // [parter index, partner rating, partner's rating of self] 
	uint proposedW, thisWPrefs;
	
	// initialize mQueue and wStatus
	thisMQueue[1] = 0;
	thisWStatus[0] = -1;
	thisWStatus[1] = -1;
	for (size_t ii = 0; ii < n; ii++) {
		thisMQueue[0] = ii;
		oqueue_push(mQueue, thisMQueue);
		oram_write(wStatus, thisWStatus, ii, 3);
	}
	// print_array("thisMQueue", mQueue->array, n, 2);
	// for (size_t ii = 0; ii < n+2; ii++) {
	// 	oqueue_pop(thisMQueue, mQueue);
	// 	printf("%d, %d\n", thisMQueue[0], thisMQueue[1]);
	// 	oqueue_push(mQueue, thisMQueue);
	// }
	// print_array("thisMQueue", mQueue->array, n, 2);


    bool cond = false;
	for (size_t ii = 0; ii < n * n; ii++) {
		bool queue_empty = oqueue_empty(mQueue);
		if (queue_empty == 0) {
			oqueue_pop(thisMQueue, mQueue); // pop cuo wu
			oram_read(&proposedW, mPrefs, thisMQueue[0] * n + thisMQueue[1], 1);
			oram_read(&thisWPrefs, wPrefs, proposedW * n + thisMQueue[0], 1);

			// write new status for this w
			thisWStatus[0] = thisMQueue[0];
			thisWStatus[1] = thisWPrefs;
			thisWStatus[2] = thisMQueue[1];
			oram_apply(wStatus, thisWStatus, proposedW);
        }
        // thisW 当前的 matching 的rank 小于 
		cond = (thisWPrefs < thisWStatus[1]) | (thisWStatus[1] == -1);
        //revealOblivBool(&cond, ocond,0);
		if (cond) {
            if (queue_empty==0) {
				// write new status for this m
				thisMStatus[0] = proposedW;
				thisMStatus[1] = thisMQueue[1];
				oram_write(mStatus, thisMStatus, thisMQueue[0], 2);

				// the old m is now sad and alone
				// fix bug
				if (thisWStatus[0] != -1) {
					nextMQueue[0] = thisWStatus[0];
					nextMQueue[1] = thisWStatus[2] + 1;
					oqueue_push(mQueue, nextMQueue);
				}

			} 
		}else {
			if (queue_empty==0) {
				thisMQueue[1] += 1;
				oqueue_push(mQueue, thisMQueue);
			}
		}
	}

	for (int ii = 0; ii < n; ii++) {
		oram_read(thisMStatus, mStatus, ii, 2);
		output[ii] = thisMStatus[0];
	}
	//print_array("mStatus", mStatus, n, 2);

	oqueue_free(mQueue);
	oram_free(mPrefs);
	oram_free(wPrefs);
	oram_free(mStatus);
	oram_free(wStatus);
	return output;
}

void shuffle(uint *array, size_t n) {
	if (n > 1) {
		size_t i;
		for (i = 0; i < n - 1; i++) 
		{
		  size_t j = i + rand() / (RAND_MAX / (n - i) + 1);
		  int t = array[j];
		  array[j] = array[i];
		  array[i] = t;
		}
	}
}


int main() {
	int pairs = 10;
	uint * perm = malloc(pairs * sizeof(uint));
	for (int kk = 0; kk < pairs; kk++) {
		perm[kk] = kk;
	}
	uint * mPrefs = malloc(pairs * pairs * sizeof(uint));
	uint * wPrefs = malloc(pairs * pairs * sizeof(uint));
	uint * output = malloc(pairs * sizeof(uint));

	// int amPrefs[16] = {3, 1, 2, 0,
    //     1, 0, 2, 3,
    //     0, 1, 2, 3,
    //     0, 1, 2, 3};
	// int awPrefs[16] = {0, 1, 2, 3,
    //     0, 1, 2, 3,
    //     0, 1, 2, 3,
    //     0, 1, 2, 3};
	// for (int i = 0; i < 16; i++) {
	// 	mPrefs[i] = amPrefs[i];
	// 	wPrefs[i] = awPrefs[i];
	// }
	for ( int sample = 0; sample < 5 ; sample++) {
		for (int ll = 0; ll < pairs; ll++) {
			shuffle(perm, pairs);
			for (int jj = 0; jj < pairs; jj++) {
				mPrefs[ll * pairs + jj] = perm[jj];
			}
			for (int jj = 0; jj < pairs; jj++) {
				wPrefs[ll * pairs + jj] = perm[jj];
			}
		}
		print_array("mPrefs", mPrefs, pairs, pairs);
		print_array("wPrefs", wPrefs, pairs, pairs);

		ogale_shapley_textbook_revealed(output, mPrefs, wPrefs, pairs);
		for (int i = 0; i < pairs; i++) {
			printf("%d,", output[i]);
		}
		printf("\n");
	}
	
	free(perm);
	free(output);
	free(mPrefs);
	free(wPrefs);

	return 0;
}