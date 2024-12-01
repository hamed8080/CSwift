//
//  sum_integers.c
//  PNG
//
//  Created by Hamed Hosseini on 12/1/24.
//

#include "include/sum_integers.h"

int sum_and_free(int *start, size_t count) {
    int sum = 0;
    for (size_t i = 0; i < count; ++i) {
        sum += start[i];
    }
    free(start); // Deallocate the memory
    return sum;
}
