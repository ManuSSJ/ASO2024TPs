#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    for (int i = 0; i < 5; i++) {
        printf("Proceso ID: %d\n", getpid());
        sleep(1);
    }
    return 0;
}
