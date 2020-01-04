#include<stdio.h>

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	// get signed value
	printf("\nInput first number: ");
	scanf("%d",&num1);
	printf("\nInput second number: ");
	scanf("%d",&num2);
		
	// swaping 
	num1 = num1^num2;
	num2 = num1^num2;
	num1 = num1^num2;
	
	// print numbers
	printf("First number after swapping: %d. \n",num1);
	printf("Second number after swapping: %d. \n",num2);

	return 0;
}