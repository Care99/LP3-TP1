#include <malloc.h>
#include <pthread.h>
#include<stdlib.h>
#include<stdio.h>

/* Allocate a temporary buffer.*/

void* allocate_buffer (size_t size)
{
return malloc (size);
}

/* Deallocate a temporary buffer.*/

void deallocate_buffer (void* buffer)
{
    printf("Deallocate a temporary buffer\n");
    free (buffer);
}

void* do_some_work (void* arg)
{
/* Allocate a temporary buffer.*/
void* temp_buffer = allocate_buffer (1024);

/* Register a cleanup handler for this buffer, to deallocate it in
case the thread exits or is cancelled. */

pthread_cleanup_push (deallocate_buffer, temp_buffer);

/* Do some work here that might call pthread_exit or might be
cancelled... */

int bandera=1+rand()%2;

if(bandera==1)
{
    printf("El hilo fue cancelado\n");
    pthread_exit(0);

}
printf("El hilo no fue cancelado\n");


/* Unregister the cleanup handler. Because we pass a nonzero value,
this actually performs the cleanup by calling
deallocate_buffer. */

pthread_cleanup_pop (1);

}

int main()
{

    pthread_t hilo1;
    pthread_t hilo2;
    pthread_t hilo3;
    pthread_t hilo4;
    pthread_t hilo5;
    pthread_t hilo6;

    pthread_create(&hilo1,NULL,&do_some_work,NULL);
    pthread_create(&hilo2,NULL,&do_some_work,NULL);
    pthread_create(&hilo3,NULL,&do_some_work,NULL);
    pthread_create(&hilo4,NULL,&do_some_work,NULL);
    pthread_create(&hilo5,NULL,&do_some_work,NULL);
    pthread_create(&hilo6,NULL,&do_some_work,NULL);

    pthread_join(hilo1,NULL);
    pthread_join(hilo2,NULL);
    pthread_join(hilo3,NULL);
    pthread_join(hilo4,NULL);
    pthread_join(hilo5,NULL);
    pthread_join(hilo6,NULL);
}
