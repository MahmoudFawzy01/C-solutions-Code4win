#include<stdio.h>
#include <math.h>

int main (void)
{
	// var declration 
	double num1;
	
	// user interface
	printf("\nPlease Enter any number to find the square root : ");
	scanf("%lf",&num1);
	
	// print the result
	if (num1 > 0)
		printf("Square root of %.2lf = %.2lf \n \n",num1,sqrt(num1));
	else
		printf("Enter valid value. \n \n");
	
	return 0;
}