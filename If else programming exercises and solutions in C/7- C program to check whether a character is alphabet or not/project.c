#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nEnter any character: ");
	scanf("%c",&num1);
	
    if((num1 >= 'a' && num1 <= 'z') || (num1 >= 'A' && num1 <= 'Z'))
    {
        printf("Character is an ALPHABET.");
    }
    else
    {
        printf("Character is NOT ALPHABET.");
    }
	
	// wait for any input
	getch();
	return 0;
}