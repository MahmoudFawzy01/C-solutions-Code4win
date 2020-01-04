#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1,num2,num3;
	
	// user interface
	// get signed value
	printf("\nInput num1: ");
	scanf("%d",&num1);
	
	if (num1 > 0)
	{
		printf("Number is positive.\n");
	}
	else if (num1 < 0)
	{
		printf("Number is negative.\n");
	}
	else
	{
		printf("Number is zero.\n");
	}
	
	// wait for any input
	getch();
	return 0;
}