#include<stdio.h>

float triangleArea (float num1,float num2)
{
	return (num1 * num2)/ 2.00;
}

int main (void)
{
	// var declration 
	float num1,num2;
	
	// user interface
	printf("\nEnter base of the triangle: ");
	scanf("%f",&num1);
		
	printf("\nEnter height of the triangle: ");
	scanf("%f",&num2);
	
	// print the result
	if ((num1 > 0) && (num2>0))
	{
		printf("\nArea of the triangle = %.2f sq. units\n \n",triangleArea(num1,num2));
	}
	else
	{
		printf("\nEnter valid value. \n \n");
	}
	
	return 0;
}