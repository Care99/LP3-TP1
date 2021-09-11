#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/types.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>

#define KEY 25032
/* We must define union semun ourselves. */
union semun {
    int val;
    struct semid_ds *buf;
    unsigned short int *array;
    struct seminfo *__buf;
};
/* Obtain a binary semaphore's ID, allocating if necessary. */
int binary_semaphore_allocation (key_t key, int sem_flags)
{
    return semget (key, 1, sem_flags);
}
/* Deallocate a binary semaphore. All users must have finished their
use. Returns -1 on failure. */
int binary_semaphore_deallocate (int semid)
{
    union semun ignored_argument;
    return semctl (semid, 1, IPC_RMID, ignored_argument);
}

int main(){
    int sem = binary_semaphore_allocation(KEY,IPC_CREAT);
    int dealoc;
    if(sem == -1)
        printf("No se pudo asignar semaforo \n");
    else{
        printf("Se pudo asignar semaforo con semid : %d \n", KEY);
        dealoc = binary_semaphore_deallocate(sem);

        if(dealoc != -1)
            printf("Se logro desaginar el semaforo \n");
        else
            printf("No se logro desaginar el semaforo \n");
    }   

}  