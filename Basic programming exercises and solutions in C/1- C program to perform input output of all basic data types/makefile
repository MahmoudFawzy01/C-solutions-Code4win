# Source, Executable, Includes, Library Defines    *.i *.asm
#INCL   = 
SRC    = project.c
OBJ    = $(SRC:.c=.o)
ASM    = $(SRC:.c=.asm)
INT    = $(SRC:.c=.i)


#this is the comment section.
CC =gcc  #compiler
#TARGET = project.c #target file name

build:$(SRC) #target name
	$(CC) -E $(SRC) -o $(INT)
	$(CC) -S $(SRC) -o $(ASM)
	$(CC) -c $(SRC) -o $(OBJ)
	$(CC) $(SRC)

.PHONY: clean

clean: 
	rm -f $(OBJ)	