# Source, Executable, Includes, Library Defines    *.c *.i *.asm
#LIB   =
SRC    = project.c
OBJ    = $(SRC:.c=.o)
ASM    = $(SRC:.c=.asm)
INT    = $(SRC:.c=.i)


#this is the comment section.
CC =gcc  #compiler

#target name
build: #Dependences 
	$(CC) -E $(SRC) -o $(INT)
	$(CC) -S $(SRC) -o $(ASM)
	$(CC) -c $(SRC) -o $(OBJ)

EXE: build
	$(CC) $(SRC)
