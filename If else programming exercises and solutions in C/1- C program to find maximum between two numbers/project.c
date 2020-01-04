#include<stdio.h>
#include<stdlib.h>

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	// get signed value
	printf("\nInput num1: ");
	scanf("%d",&num1);
	
	printf("\nInput num2: ");
	scanf("%d",&num2);
	
	// get max
	if (num1> num2)
	{
		// print max
		printf("Maximum = %d",num1);
	}
	else
	{
		// print max
		printf("Maximum = %d",num2);
	}
	
	// wait for any input
	getch();
	return 0;
}