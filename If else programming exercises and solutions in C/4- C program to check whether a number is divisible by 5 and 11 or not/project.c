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
	
	if ((num1 % 5 == 0) && (num1 % 11 == 0))
	{
		printf("Number is divisible by 5 and 11.\n");
	}
	else
	{
		printf("Number is not divisible by 5 and 11.\n");
	}
	
	// wait for any input
	getch();
	return 0;
}