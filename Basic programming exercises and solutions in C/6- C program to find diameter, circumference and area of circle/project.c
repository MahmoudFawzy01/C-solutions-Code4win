#include<stdio.h>

#define bi 3.142857142857143


float Diameter (float radius)
{
	return (2 * radius);
}
float CircleCicumference (float radius)
{
	return (2 * bi * radius);
}
float CircleArea (float radius)
{
	return (bi * radius * radius);
}

int main (void)
{
	// var declration 
	float num1;
	
	// user interface
	printf("\nEnter radius: ");
	scanf("%f",&num1);

	
	// print the result
	if ((num1 > 0))
	{
		printf("\nThe diameter of this circle is: %.2f units \n \n",Diameter(num1));
		printf("\nThe cicumference of this circle is: %.2f units \n \n",CircleCicumference(num1));
		printf("\nThe area of this circle is: %.2f units \n \n",CircleArea(num1));
	}
	else{
		printf("\nPlease enter valid length or width.\n \n");
	}
	
	
	return 0;
}