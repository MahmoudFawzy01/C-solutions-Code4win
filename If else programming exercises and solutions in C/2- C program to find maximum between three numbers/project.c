#include<stdio.h>
#include<stdlib.h>

int main (void)
{
	// var declration 
	int num1,num2,num3;
	
	// user interface
	// get signed value
	printf("\nInput num1: ");
	scanf("%d",&num1);
	
	printf("\nInput num2: ");
	scanf("%d",&num2);
	
	printf("\nInput num3: ");
	scanf("%d",&num3);
	
	// get max
	if ((num1> num2) && (num1> num3))
	{
		// print max
		printf("Maximum = %d",num1);
	}
	else if ((num2> num1) && (num2> num3))
	{
		// print max
		printf("Maximum = %d",num2);
	}
	else if ((num3> num1) && (num3> num2))
	{
		// print max
		printf("Maximum = %d",num3);
	}
	else
	{
		printf("They are equal.");
	}
	
	// wait for any input
	getch();
	return 0;
}