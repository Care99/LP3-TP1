#include <pthread.h>
#include <unistd.h>
#include <stdio.h>




bool value = false;

extern void change_bool_value(){
    value = !value;
}

extern bool should_exit_thread_immediately (){
    return value;
};

class ThreadExitException
{
public:
    /* Create an exception-signaling thread exit
with RETURN_VALUE.*/
    ThreadExitException(void * return_value)
        : thread_return_value_ (return_value)
    {   
    }
    /* Actually exit the thread, using the return value provided in the constructor. */
    void * DoTheadExit(){
        pthread_exit (thread_return_value_);
    }

private:
    /* The return value that will be usad when exiting the thread.*/
    void * thread_return_value_;
};

void do_some_work(){
    while(1){
        /* Do some useful things here*/
        if (should_exit_thread_immediately()){
            throw ThreadExitException(NULL);
        }
    }
}

void * thread_function(void * arg){
    try{
        do_some_work();
    }catch(ThreadExitException e){
        /* Some function indicated that we should exit the thread. */
        e.DoTheadExit();
    }
    return NULL;
}


void * thread_sleep_function(void * arg){
    sleep(1);
    change_bool_value();
    return NULL;
}

int main(){
    pthread_t thread;
    pthread_t time;

    pthread_create(&thread, NULL, &thread_function, NULL);
    pthread_create(&time, NULL, &thread_sleep_function, NULL);

    pthread_join(time, NULL);
    return 0;
}