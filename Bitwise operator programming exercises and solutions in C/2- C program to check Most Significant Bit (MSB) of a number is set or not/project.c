#include<stdio.h>

int MSB(int num1)
{
	return (num1 & 1<<((sizeof(int)*8)-1)) ? 1:0;
}

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// signed value
	printf("\nInput number: ");
	scanf("%d",&num1);
	
	// print the result
	printf("Most Significant Bit of %d is (%d).\n \n",num1,MSB(num1));
	
	return 0;
}