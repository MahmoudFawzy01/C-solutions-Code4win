#include<stdio.h>

int sum(int num1,int num2)
{
	return num1+num2;
}

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	printf("\nPlease Enter any two numbers: ");
	scanf("%d %d",&num1,&num2);
	
	// print the result
	if ((num1 > 0) && (num2>0))
	printf("The sum result is: %d \n \n",sum(num1,num2));
	
	return 0;
}