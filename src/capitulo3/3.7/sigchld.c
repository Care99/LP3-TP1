#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<signal.h>
#include<string.h>
#include<sys/types.h>
#include<sys/wait.h>

sig_atomic_t child_exit_status;

void clean_up_child_process (int signal_number)
{
    /* Clean up the child process. */
    int status;
    wait (&status);
    /* Store its exit status in a global variable.*/
    child_exit_status = status;

}

int main ()
{
/* Handle SIGCHLD by calling clean_up_child_process. */
struct sigaction sigchld_action;

memset (&sigchld_action, 0, sizeof (sigchld_action));

sigchld_action.sa_handler = &clean_up_child_process;

sigaction (SIGCHLD, &sigchld_action, NULL);
/* Now do things, including forking a child process.*/
/* pid_t para identificador de proceso */

pid_t pidHijo;

pidHijo=fork ();

 if (pidHijo > 0)
    {
        int a=0;
        printf("Ejecutando proceso padre, esperarando %d segundos\n",(a=rand()%1000));
        sleep(a);
    }
    else if(pidHijo == 0)
    {
        printf("Termina proceso hijo,salir del proceso\n");
        exit(0);
    }
    else
    {
        printf("Error en el fork\n");
    }

  return 0 ;
}