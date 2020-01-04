#include<stdio.h>

int main (void)
{
	// var declration 
	int num1,num2, max;
	
	// user interface
	// get signed value
	printf("\nEnter two number: ");
	scanf("%d%d",&num1,&num2);
	
	// get max
    max = (num1 > num2) ? num1 : num2;
	
	// print max
	printf("Maximum between %d and %d is %d", num1, num2, max);
	
	return 0;
}