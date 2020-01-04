#include<stdio.h>

int LSB(int num1)
{
	return (num1 & 1) ? 1:0;
}

int main (void)
{
	// var declration 
	int num1,LSB_Value;
	
	// user interface
	printf("\nInput number: ");
	scanf("%d",&num1);
	// print the result
	printf("Least Significant Bit of %d is (%d).\n \n",num1,LSB(num1));
	
	return 0;
}