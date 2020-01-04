#include<stdio.h>
#include<math.h>

float equilateralTriangleArea (float num1)
{
	return (sqrt(3) / 4.00) * num1 * num1;
}

int main (void)
{
	// var declration 
	float num1;
	
	// user interface
	printf("\nEnter side of the equilateral triangle: ");
	scanf("%f",&num1);
	
	// print the result
	if (num1 > 0) 
	{
		printf("\nArea of the equilateral triangle = %.2f sq. units\n \n",equilateralTriangleArea(num1));
	}
	else
	{
		printf("\nEnter valid value. \n \n");
	}
	
	return 0;
}