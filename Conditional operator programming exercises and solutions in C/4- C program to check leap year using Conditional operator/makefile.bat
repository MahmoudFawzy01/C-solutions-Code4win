build:
	gcc -E project.c -o project.i
	gcc -S project.c -o project.asm
	gcc -c project.c -o project.o
	gcc project.c

	
