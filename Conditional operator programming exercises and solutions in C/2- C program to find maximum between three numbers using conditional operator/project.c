#include<stdio.h>

int main (void)
{
	// var declration 
	int num1,num2,num3, max;
	
	// user interface
	// get signed value
	printf("\nEnter two number: ");
	scanf("%d%d%d",&num1,&num2,&num3);
	
	// get max
    max = (num1 > num2 && num1 > num3) ? num1 : (num2 > num3) ? num2 : num3;
	// print max
	printf("Maximum between %d, %d and %d is %d", num1, num2,num3, max);
	
	return 0;
}