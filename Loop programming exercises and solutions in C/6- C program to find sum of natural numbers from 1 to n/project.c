#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
    int num1, i, sum = 0;

	// user interface
	// get signed value

  
    printf("Input N: ");

    scanf("%d", &num1);
	
	for (i = 1; i <= num1;i++)
	{
		sum = sum + i;
	}
    printf("Sum of natural numbers 1-%d: %d",num1,sum);
	
	// wait for any input
	getch();
	return 0;
}