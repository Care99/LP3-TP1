listing-1.1: src/capitulo1/1.1/main.c src/capitulo1/1.1/reciprocal.cpp
	mkdir -p bin/capitulo1/1.1/ 
	g++ src/capitulo1/1.1/main.c src/capitulo1/1.1/reciprocal.cpp -o bin/capitulo1/1.1/reciprocal.o

listing-1.2 : listing-1.1

listing-1.3 : listing-1.1	
	
listing-2.1 : src/capitulo2/2.1/arglist.c
	mkdir -p bin/capitulo2/2.1/
	gcc src/capitulo2/2.1/arglist.c -o bin/capitulo2/2.1/arglist.o

listing-2.2 : src/capitulo2/2.2/getopt_long.c
	mkdir -p bin/capitulo2/2.2/
	gcc src/capitulo2/2.2/getopt_long.c -o bin/capitulo2/2.2/getopt_long.o

listing-2.3 : src/capitulo2/2.3/print-env.c
	mkdir -p bin/capitulo2/2.3/
	gcc src/capitulo2/2.3/print-env.c -o bin/capitulo2/2.3/print-env.o

listing-2.4 : src/capitulo2/2.4/client.c
	mkdir -p /bin/capitulo2/2.4/
	gcc src/capitulo2/2.4/client.c -o bin/capitulo2/2.4/client.o

listing-2.5 : src/capitulo2/2.5/temp_file.c
	mkdir -p bin/capitulo2/2.5/
	gcc src/capitulo2/2.5/temp_file.c -o bin/capitulo2/2.5/temp_file.o

<<<<<<< HEAD
listin-2.7	: src/capitulo2/2.7/test.c
	mkdir -p bin/capitulo2/2.7/
	gcc src/capitulo2/2.7/test.c src/capitulo2/2.8/app.c -o bin/capitulo2/2.7/test.o
=======
listing-2.6 : src/capitulo2/2.6/readfile.c
	mkdir -p bin/capitulo2/2.6/
	gcc src/capitulo2/2.6/readfile.c -o bin/capitulo2/2.6/readfile.o	

listing-2.7 : src/capitulo2/2.7/app.c
	mkdir -p bin/capitulo2/2.7/
	gcc src/capitulo2/2.7/app.c -o bin/capitulo2/2.7/app.o	

listing-2.8 : listing-2.7
>>>>>>> c8ece46a4b205ca4368e28a27767b4f41260af18

listing-2.9 : src/capitulo2/2.9/tifftest.c
	mkdir -p bin/capitulo2/2.9/
	gcc src/capitulo2/2.9/tifftest.c -o bin/capitulo2/2.9/tifftest.o	

listing-3.1 : src/capitulo3/3.1/print-pid.c
	mkdir -p bin/capitulo3/3.1/
	gcc src/capitulo3/3.1/print-pid.c -o bin/capitulo3/3.1/print-pid.o 

listing-3.2 : src/capitulo3/3.2/system.c
	mkdir -p bin/capitulo3/3.2/
	gcc src/capitulo3/3.2/system.c -o bin/capitulo3/3.2/system.o

listing-3.3 : src/capitulo3/3.3/fork.c
	mkdir -p bin/capitulo3/3.3/
	gcc src/capitulo3/3.3/fork.c -o bin/capitulo3/3.3/fork.o 

listing-3.4 : src/capitulo3/3.4/fork-exec.c
	mkdir -p bin/capitulo3/3.4/
	gcc src/capitulo3/3.4/fork-exec.c -o bin/capitulo3/3.4/fork-exec.o 

listing-3.5 : src/capitulo3/3.5/sigusr1.c
	mkdir -p bin/capitulo3/3.5/
	gcc src/capitulo3/3.5/sigusr1.c -o bin/capitulo3/3.5/sigusr1.o 

listing-3.6 : src/capitulo3/3.6/zombie.c
	mkdir -p bin/capitulo3/3.6/
	gcc src/capitulo3/3.6/zombie.c -o bin/capitulo3/3.6/zombie.o

listing-3.7 : src/capitulo3/3.7/sigchld.c
	mkdir -p bin/capitulo3/3.7/
	gcc src/capitulo3/3.7/sigchld.c -o bin/capitulo3/3.7/sigchld.o 	

listing-4.1 : src/capitulo4/4.1/thread-create.c
	mkdir -p bin/capitulo4/4.1/
	gcc src/capitulo4/4.1/thread-create.c -o bin/capitulo4/4.1/thread-create.o -lpthread

listing-4.2 : src/capitulo4/4.2/thread-create2.c
	mkdir -p bin/capitulo4/4.2/
	gcc src/capitulo4/4.2/thread-create2.c -o bin/capitulo4/4.2/thread-create2.o -lpthread

listing-4.3 : listing-4.2

listing-4.4 : src/capitulo4/4.4/primes.c
	mkdir -p bin/capitulo4/4.4/
	gcc src/capitulo4/4.4/primes.c -o bin/capitulo4/4.4/primes.o -lpthread

listing-4.5 : src/capitulo4/4.5/detached.c
	mkdir -p bin/capitulo4/4.5/
	gcc src/capitulo4/4.5/detached.c -o bin/capitulo4/4.5/detached.o -lpthread

listing-4.6 : src/capitulo4/4.6/critical-section.c
	mkdir -p bin/capitulo4/4.6/
	gcc src/capitulo4/4.6/critical-section.c -o bin/capitulo4/4.6/critical-section.o

listing-4.7 : src/capitulo4/4.7/tsd.c
	mkdir -p bin/capitulo4/4.7/
	gcc src/capitulo4/4.7/tsd.c -o bin/capitulo4/4.7/tsd.o

listing-4.8 : src/capitulo4/4.8/cleanup.c
	mkdir -p bin/capitulo4/4.8/
	gcc src/capitulo4/4.8/cleanup.c -o bin/capitulo4/4.8/cleanup.o -lpthread

listing-4.9 : src/capitulo4/4.9/cxx-exit.cpp
	mkdir -p bin/capitulo4/4.9/
	g++ src/capitulo4/4.9/cxx-exit.cpp -o bin/capitulo4/4.9/cxx-exit.o -lpthread

listing-4.10 : src/capitulo4/4.10/job-queue1.c
	mkdir -p bin/capitulo4/4.10/
	gcc src/capitulo4/4.10/job-queue1.c -o bin/capitulo4/4.10/job-queue1.o

listing-4.11 : src/capitulo4/4.11/job-queue2.c
	mkdir -p bin/capitulo3/4.11/
	gcc src/capitulo4/4.11/job-queue2.c -o bin/capitulo4/4.11/job-queue2.o
	
listing-4.12 : src/capitulo4/4.12/job-queue3.c
	mkdir -p bin/capitulo4/4.12/
	gcc src/capitulo4/4.12/job-queue3.c -o bin/capitulo4/4.12/job-queue3.o -lpthread

listing-4.13 : src/capitulo4/4.13/spin-condvar.c
	mkdir -p bin/capitulo4/4.13/
	gcc src/capitulo4/4.13/spin-condvar.c -o bin/capitulo4/4.13/spin-condvar.o -lpthread

listing-4.14 : src/capitulo4/4.14/condvar.c
	mkdir -p bin/capitulo4/4.14/
	gcc src/capitulo4/4.14/condvar.c -o bin/capitulo4/4.14/condvar.o -lpthread

listing-4.15 : src/capitulo4/4.15/thread-pid.c
	mkdir -p bin/capitulo4/4.15/
	gcc src/capitulo4/4.15/thread-pid.c -o bin/capitulo4/4.15/thread-pid.o

listing-5.1 : src/capitulo5/5.1/shm.c
	mkdir -p bin/capitulo5/5.1/
	gcc src/capitulo5/5.1/shm.c -o bin/capitulo5/5.1/shm.o

listing-5.2 : src/capitulo5/5.2/sem_all_deall.c
	mkdir -p bin/capitulo5/5.2/
	gcc src/capitulo5/5.2/sem_all_deall.c -o bin/capitulo5/5.2/sem_all_deall.o

listing-5.3 : src/capitulo5/5.3/sem_init.c
	mkdir -p bin/capitulo5/5.3/
	gcc src/capitulo5/5.3/sem_init.c -o bin/capitulo5/5.3/sem_init.o

listing-5.4 : src/capitulo5/3.2/sem_pv.c
	mkdir -p bin/capitulo4/5.4/
	gcc src/capitulo5/3.2/sem_pv.c -o bin/capitulo5/5.4/sem_pv.o
	
listing-5.5 : src/capitulo5/5.5/mmap-write.c
	mkdir -p bin/capitulo5/5.5/
	gcc src/capitulo5/5.5/mmap-write.c -o bin/capitulo5/5.5/mmap-write.o

listing-5.6 : src/capitulo5/5.6/mmap-read.c
	mkdir -p bin/capitulo5/5.6/
	gcc src/capitulo5/5.6/mmap-read.c -o bin/capitulo5/5.6/mmap-read.o 	

listing-5.7 : src/capitulo5/5.7/pipe.c
	mkdir -p bin/capitulo5/5.7/
	gcc src/capitulo5/5.7/pipe.c -o bin/capitulo5/5.7/pipe.o

listing-5.8 : src/capitulo5/5.8/dup2.c
	mkdir -p bin/capitulo5/5.8/
	gcc src/capitulo5/5.8/dup2.c -o bin/capitulo5/5.8/dup2.o

listing-5.9 : src/capitulo5/5.9/popen.c
	mkdir -p bin/capitulo5/5.9/
	gcc src/capitulo5/5.9/popen.c -o bin/capitulo5/5.9/popen.o	

listing-5.10 : src/capitulo5/5.10/socket-server.c
	mkdir -p bin/capitulo5/5.10/
	gcc src/capitulo5/5.10/socket-server.c -o bin/capitulo5/5.10/socket-server.o

listing-5.11 : src/capitulo5/5.11/socket-client.c
	mkdir -p bin/capitulo5/5.11/
	gcc src/capitulo5/5.11/socket-client.c -o bin/capitulo5/5.11/socket-client.o

listing-5.12 : src/capitulo5/5.12/socket-inet.c
	mkdir -p bin/capitulo5/5.12/
	gcc src/capitulo5/5.12/socket-inet.c -o bin/capitulo5/5.12/socket-inet.o

all : listing-1.1 listing-2.1 listing-2.2 listing-2.3 listing-2.4 listing-2.5 listing-2.6 listing-2.7 listing-2.9 listing-3.1 listing-3.2 listing-3.3 listing-3.4 listing-3.5 listing-3.6 listing-3.7 listing-4.1 listing-4.2 listing-4.3 listing-4.4 listing-4.5 listing-4.6 listing-4.7 listing-4.8 listing-4.9 listing-4.10 listing-4.11 listing-4.12 listing-4.13 listing-4.14 listing-4.15 listing-5.1 listing-5.2 listing-5.3 listing-5.4 listing-5.5 listing-5.6 listing-5.7 listing-5.8 listing-5.9 listing-5.10 listing-5.11 listing-5.12

clean: 
	rm -rf bin
