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
        printf("'%c' is alphabet.", num1);
    }
    else if(num1 >= '0' && num1 <= '9')
    {
        printf("'%c' is digit.", num1);
    }
    else 
    {
        printf("'%c' is special character.", num1);
    }
	
	// wait for any input
	getch();
	return 0;
}