listing-1.1: src/capitulo1/1.1/main.c src/capitulo1/1.1/reciprocal.cpp
	mkdir -p bin/capitulo1/1.1/ 
	g++ src/capitulo1/1.1/main.c src/capitulo1/1.1/reciprocal.cpp -o bin/capitulo1/1.1/reciprocal.o

listing-1.2 : listing-1.1

listing-1.3 : listing-1.1	
	
listing-2.2 : src/capitulo2/2.2/getopt_long.c
	mkdir -p bin/capitulo2/2.2/
	gcc src/capitulo2/2.2/getopt_long.c -o bin/capitulo2/2.2/getopt_long.o

listing-2.3 : src/capitulo2/2.3/print-env.c
	mkdir -p bin/capitulo2/2.3/
	gcc src/capitulo2/2.3/print-env.c -o bin/capitulo2/2.3/print-env.o

listing-2.5 : src/capitulo2/2.5/temp_file.c
	mkdir -p bin/capitulo2/2.5/
	gcc src/capitulo2/2.5/temp_file.c -o bin/capitulo2/2.5/temp_file.o

listing-2.7 : src/capitulo2/2.7/test.c
	mkdir -p bin/capitulo2/2.7/
	gcc src/capitulo2/2.7/test.c -o bin/capitulo2/2.7/test.o	

listing-2.9 : src/capitulo2/2.9/tifftest.c
	mkdir -p bin/capitulo2/2.9/
	gcc src/capitulo2/2.9/tifftest.c -o bin/capitulo2/2.9/tifftest.o -ltiff

listing-3.1 : src/capitulo3/3.1/print-pid.c
	mkdir -p bin/capitulo3/3.1/
	gcc src/capitulo3/3.1/print-pid.c -o bin/capitulo3/3.1/print-pid.o 

listing-3.4 : src/capitulo3/3.4/fork-exec.c
	mkdir -p bin/capitulo3/3.4/
	gcc src/capitulo3/3.4/fork-exec.c -o bin/capitulo3/3.4/fork-exec.o 

listing-3.5 : src/capitulo3/3.5/sigusr1.c
	mkdir -p bin/capitulo3/3.5/
	gcc src/capitulo3/3.5/sigusr1.c -o bin/capitulo3/3.5/sigusr1.o 

listing-4.1 : src/capitulo4/4.1/thread-create.c
	mkdir -p bin/capitulo4/4.1/
	gcc src/capitulo4/4.1/thread-create.c -o bin/capitulo4/4.1/thread-create.o -lpthread

listing-4.2 : src/capitulo4/4.2/thread-create2.c
	mkdir -p bin/capitulo4/4.2/
	gcc src/capitulo4/4.2/thread-create2.c -o bin/capitulo4/4.2/thread-create2.o -lpthread

listing-4.5 : src/capitulo4/4.5/detached.c
	mkdir -p bin/capitulo4/4.5/
	gcc src/capitulo4/4.5/detached.c -o bin/capitulo4/4.5/detached.o -lpthread

listing-4.6 : src/capitulo4/4.6/critical-section.c
	mkdir -p bin/capitulo4/4.6/
	gcc src/capitulo4/4.6/critical-section.c -o bin/capitulo4/4.6/critical-section.o

listing-4.9 : src/capitulo4/4.9/cxx-exit.cpp
	mkdir -p bin/capitulo4/4.9/
	g++ src/capitulo4/4.9/cxx-exit.cpp -o bin/capitulo4/4.9/cxx-exit.o -lpthread

listing-4.10 : src/capitulo4/4.10/job-queue1.c
	mkdir -p bin/capitulo4/4.10/
	gcc src/capitulo4/4.10/job-queue1.c -o bin/capitulo4/4.10/job-queue1.o

listing-4.13 : src/capitulo4/4.13/spin-condvar.c
	mkdir -p bin/capitulo4/4.13/
	gcc src/capitulo4/4.13/spin-condvar.c -o bin/capitulo4/4.13/spin-condvar.o -lpthread

listing-4.14 : src/capitulo4/4.14/condvar.c
	mkdir -p bin/capitulo4/4.14/
	gcc src/capitulo4/4.14/condvar.c -o bin/capitulo4/4.14/condvar.o -lpthread

listing-5.2 : src/capitulo5/5.2/sem_all_deall.c
	mkdir -p bin/capitulo5/5.2/
	gcc src/capitulo5/5.2/sem_all_deall.c -o bin/capitulo5/5.2/sem_all_deall.o

listing-5.3 : src/capitulo5/5.3/sem_init.c
	mkdir -p bin/capitulo5/5.3/
	gcc src/capitulo5/5.3/sem_init.c -o bin/capitulo5/5.3/sem_init.o

listing-5.5 : src/capitulo5/5.5/mmap-write.c
	mkdir -p bin/capitulo5/5.5/
	gcc src/capitulo5/5.5/mmap-write.c -o bin/capitulo5/5.5/mmap-write.o

listing-5.7 : src/capitulo5/5.7/pipe.c
	mkdir -p bin/capitulo5/5.7/
	gcc src/capitulo5/5.7/pipe.c -o bin/capitulo5/5.7/pipe.o

listing-5.10 : src/capitulo5/5.10/socket-server.c
	mkdir -p bin/capitulo5/5.10/
	gcc src/capitulo5/5.10/socket-server.c -o bin/capitulo5/5.10/socket-server.o

listing-5.11 : src/capitulo5/5.11/socket-client.c
	mkdir -p bin/capitulo5/5.11/
	gcc src/capitulo5/5.11/socket-client.c -o bin/capitulo5/5.11/socket-client.o
