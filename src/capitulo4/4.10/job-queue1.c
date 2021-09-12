#include <malloc.h>
#include <stdio.h>

struct job
{
    /* Link field for linked list. */
    struct job *next;
    int jobN;
    /* Other fields describing work to be done... */
};
/* A linked list of pending jobs. */
struct job *job_queue;

void process_job (struct job* jobX){
    printf("realizando trabajo %d\n", jobX->jobN);
}

/* Process queued jobs until the queue is empty. */
void *thread_function(void *arg)
{
    while (job_queue != NULL)
    {
        /* Get the next available job. */
        struct job *next_job = job_queue;
        /* Remove this job from the list. */
        job_queue = job_queue->next;
        /* Carry out the work. */
        process_job(next_job);
        /* Clean up. */
        free(next_job);
    }
    return NULL;
}

struct job* job1;
struct job* job2;
struct job* job3;


int main(void){

    job1 = malloc(sizeof(struct job));
    job2 = malloc(sizeof(struct job));
    job3 = malloc(sizeof(struct job));

    job1->jobN = 1;
    job2->jobN = 2;
    job3->jobN = 3;

    job1->next = job2;
    job2->next = job3;
    job3->next = NULL;

    job_queue = job1;

    thread_function(NULL);
}