#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <stdio.h>

/* We must define union semun ourselves.  */
union semun {
    int val;
    struct semid_ds *buf;
    unsigned short int *array;
    struct seminfo *__buf;
};
/* Initialize a binary semaphore with a value of 1.  */
int binary_semaphore_initialize (int semid)
{
    union semun argument;
    unsigned short values[1];
    values[0] = 1;
    argument.array = values;
    return semctl (semid, 0, SETALL, argument);
}

int main() {
    printf("inicializando semaforo\n");
    int semaforo_id = semget(1492, 1, 0666 | IPC_CREAT);
    int semaforo = binary_semaphore_initialize(semaforo_id);
    if(semaforo >= 0){
        printf("Semaforo inicializado\n");
    } else {
        printf("Semaforo no inicializado\n");
    }

    return 0;
}