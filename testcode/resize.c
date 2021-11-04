#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

typedef struct{
    size_t capacity;
    size_t size;
    int *data;
} vecint;


vecint new_vecint(int* buff, size_t buffsize){

    size_t size = buffsize/sizeof(int);
    size_t capacity = size*2;
    int* data = malloc(capacity*sizeof(int));

    for(size_t i = 0; i < size; i++){
        data[i] = buff[i];
    }
    return (vecint) {
        .capacity = capacity,
        .size = size,
        .data = data
    };
}

void vecint_push_back(vecint *v, int val){

    if(v->size+1 >= v->capacity){

        v->capacity = v->capacity*2;

        int* buff1 = v->data;
        int* buff2 = malloc(v->capacity*sizeof(int));

        for(size_t i = 0; i < v->size; i++){
            buff2[i] = buff1[i];
        }

        v->data = buff2;
        free(buff1);
    }

    v->data[v->size] = val;
    v->size = v->size+1;
}

void destroy_vecint(vecint *v){

    free(v->data);
}


int main(){

    int nums[] = {1, 2, 3, 4, 5};
    vecint v = new_vecint(nums,sizeof(nums));
    for(size_t i = 6; i < 200; i++){
        vecint_push_back(&v, i);
    }
    for(size_t i = 0; i < v.size; i++){
        printf("%zu: %d\n",i,v.data[i]);
    }
    printf("%zu\n",v.size);
    //printf("%d\n",v.data[5]);
    destroy_vecint(&v);
}