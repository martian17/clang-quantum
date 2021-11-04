#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef size_t(*growfn)(size_t length, size_t capacity);

typedef struct
{
    int *data;
    size_t capacity;
    size_t length;
    growfn _growfn;
} IntVector;

size_t defGrow(size_t length, size_t capacity) { return capacity *= 2;}

IntVector newVec(const int *data, size_t size)
{
    printf("size: %zu\n",size);
    size_t length   = size / sizeof(int);
    size_t capacity = length * 2;
    printf("capacity: %zu\n",capacity);

    int *temp = (int*)malloc(capacity*sizeof(int));

    for(size_t i = 0; i < length; i++)
    {
        temp[i] = data[i];
    }

    return (IntVector) {
        .data = temp,
        .capacity = capacity,
        .length = length,
        ._growfn = defGrow
    };
}

void grow(IntVector *vec)
{
    //printf("growing cap: %zu len: %zu\n",vec->capacity, vec->length);
    vec->capacity = vec->_growfn(vec->length, vec->capacity);
    //printf("growing cap: %zu len: %zu\n",vec->capacity, vec->length);
    int *temp = (int*)malloc(vec->capacity);

    for(size_t i = 0; i < vec->length; i++)
    {
        temp[i] = vec->data[i];
    }

    free(vec->data);
    vec->data = temp;
}

void add_item(IntVector *vec, int data)
{
    if(vec->length+1 > vec->capacity)
        grow(vec);
    //printf("cap: %zu len: %zu\n",vec->capacity, vec->length);

    vec->data[vec->length] = data;
    vec->length += 1;
}

int main() {

    int nums[] = {1, 2, 3, 4, 5};

    IntVector vec = newVec(nums, sizeof(nums));
    for(int i = 6; i < 9; i++){
        //printf("%d\n",i);
        add_item(&vec, i);
    }

    printf("Value: %d\n", *(vec.data + 5));

    return 0;
}