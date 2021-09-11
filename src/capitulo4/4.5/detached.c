#include <pthread.h>
#include <stdio.h>
void* thread_function (void * thread_arg)
{
    /*  while (1){
        printf("-funcion \n");
    }*/
}

int main ()
{

    pthread_attr_t attr;
    pthread_t thread;
    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_DETACHED);
    pthread_create (&thread, &attr, &thread_function, NULL);
    pthread_attr_destroy (&attr);
    /* Do work here...
     for(int i = 0 ; i < 10000 ; i++){
        printf("main \n");
    }*/
    /* No need to join the second thread. */
    return 0;

}

