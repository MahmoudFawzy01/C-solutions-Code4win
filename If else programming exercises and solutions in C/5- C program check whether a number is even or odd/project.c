#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nInput num1: ");
	scanf("%d",&num1);
	
	if ((num1 % 2 == 0))
	{
		printf("%d is even number.\n",num1);
	}
	else
	{
		printf("%d is odd number.\n",num1);
	}
	
	// wait for any input
	getch();
	return 0;
}