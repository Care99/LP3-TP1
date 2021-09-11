listing-2.2 : src/capitulo2/2.2/getopt_long.c
	mkdir -p bin/capitulo2/2.2/
	gcc src/capitulo2/2.2/getopt_long.c -o bin/capitulo2/2.2/getopt_long.o

listing-2.5 : src/capitulo2/2.5/temp_file.c
	mkdir -p bin/capitulo2/2.5/
	gcc src/capitulo2/2.5/temp_file.c -o bin/capitulo2/2.5/temp_file.o

listing-2.9 : src/capitulo2/2.9/tifftest.c
	mkdir -p bin/capitulo2/2.9/
	gcc src/capitulo2/2.9/tifftest.c -o bin/capitulo2/2.9/tifftest.o -ltiff

listing-3.4 : src/capitulo3/3.4/fork-exec.c
	mkdir -p bin/capitulo3/3.4/
	gcc src/capitulo3/3.4/fork-exec.c -o bin/capitulo3/3.4/fork-exec.o 

listing-4.1 : src/capitulo4/4.1/thread-create.c
	mkdir -p bin/capitulo4/4.1/
	gcc src/capitulo4/4.1/thread-create.c -o bin/capitulo4/4.1/thread-create.o -lpthread