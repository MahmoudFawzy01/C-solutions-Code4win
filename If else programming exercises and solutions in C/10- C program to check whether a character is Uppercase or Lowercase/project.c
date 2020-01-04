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
	
	if(num1 >= 'A' && num1 <= 'Z')
    {
        printf("'%c' is uppercase alphabet.", num1);
    }
    else if(num1 >= 'a' && num1 <= 'z')
    {
        printf("'%c' is lowercase alphabet.", num1);
    }
    else
    {
        printf("'%c' is not an alphabet.", num1);
    }
	
	// wait for any input
	getch();
	return 0;
}