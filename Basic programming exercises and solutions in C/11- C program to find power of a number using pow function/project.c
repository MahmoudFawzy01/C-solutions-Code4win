#include<stdio.h>

int getPower(int base,int exponent)
{
	int i,result = 1;
	for (i = 0; i < exponent;i++)
	{
		result = result * base;
	}
	return result;
}

int main (void)
{
	// var declration 
	int base,exponent,power;
	
	// user interface
	printf("\nPlease enter base: ");
	scanf("%d",&base);
	
	printf("\nPlease enter exponent: ");
	scanf("%d",&exponent);
	
	// print the result
	if ((base >= 0) && (exponent >= 0))
	{
		if (exponent == 0)
		{
			power = 1;
		}
		else if (base == 0)
		{
			power = 0;
		}
		else
		{
			power = getPower(base,exponent);
		}
		printf("\nThe power result is: %d \n \n",power);
	}

	return 0;
}