#include<stdio.h>

int thirdAngle (int num1,int num2)
{
	return 180 - (num1 + num2);
}

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	printf("\nEnter first angle: ");
	scanf("%d",&num1);
		
	printf("\nEnter second angle: ");
	scanf("%d",&num2);
	
	// print the result
	if ((num1 > 0) && (num2>0))
	{
		printf("\nThe third angle is: %d \n \n",thirdAngle(num1,num2));
	}
	else
	{
		printf("\nEnter valid value. \n \n");
	}
	
	return 0;
}