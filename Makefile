listing-2.2 : src/capitulo2/2.2/getopt_long.c
	mkdir -p bin/capitulo2/2.2/
	gcc src/capitulo2/2.2/getopt_long.c -o bin/capitulo2/2.2/getopt_long.o

listing-2.5 : src/capitulo2/2.5/temp_file.c
	mkdir -p bin/capitulo2/2.5/
	gcc src/capitulo2/2.5/temp_file.c -o bin/capitulo2/2.5/temp_file.o

listin-2.7	: src/capitulo2/2.7/test.c
	mkdir -p bin/capitulo2/2.7/
	gcc src/capitulo2/2.7/test.c src/capitulo2/2.8/app.c -o bin/capitulo2/2.7/test.o

listing-2.9 : src/capitulo2/2.9/tifftest.c
	mkdir -p bin/capitulo2/2.9/
	gcc src/capitulo2/2.9/tifftest.c -o bin/capitulo2/2.9/tifftest.o -ltiff

listing-3.4 : src/capitulo3/3.4/fork-exec.c
	mkdir -p bin/capitulo3/3.4/
	gcc src/capitulo3/3.4/fork-exec.c -o bin/capitulo3/3.4/fork-exec.o 

listing-4.1 : src/capitulo4/4.1/thread-create.c
	mkdir -p bin/capitulo4/4.1/
	gcc src/capitulo4/4.1/thread-create.c -o bin/capitulo4/4.1/thread-create.o -lpthread

listing-4.5 : src/capitulo4/4.5/detached.c
	mkdir -p bin/capitulo4/4.5/
	gcc src/capitulo4/4.5/detached.c -o bin/capitulo4/4.5/detached.o -lpthread

listing-4.9 : src/capitulo4/4.9/cxx-exit.cpp
	mkdir -p bin/capitulo4/4.9/
	g++ src/capitulo4/4.9/cxx-exit.cpp -o bin/capitulo4/4.9/cxx-exit.o -lpthread

listing-4.13 : src/capitulo4/4.13/spin-condvar.c
	mkdir -p bin/capitulo4/4.13/
	gcc src/capitulo4/4.13/spin-condvar.c -o bin/capitulo4/4.13/spin-condvar.o -lpthread

listing-5.2 : src/capitulo5/5.2/sem_all_deall.c
	mkdir -p bin/capitulo5/5.2/
	gcc src/capitulo5/5.2/sem_all_deall.c -o bin/capitulo5/5.2/sem_all_deall.o

listing-5.5 : src/capitulo5/5.5/mmap-write.c
	mkdir -p bin/capitulo5/5.5/
	gcc src/capitulo5/5.5/mmap-write.c -o bin/capitulo5/5.5/mmap-write.o
