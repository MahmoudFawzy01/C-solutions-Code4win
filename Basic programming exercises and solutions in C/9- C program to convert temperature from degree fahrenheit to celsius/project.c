#include<stdio.h>

float ConvertToCelsius (int Fahrenheit)
{
	return ((Fahrenheit - 32) * (5.0/9.0));
}


int main (void)
{
	// var declration 
	int Fahrenheit;
	
	// user interface
	printf("\nEnter temperature in Fahrenheit: ");
	scanf("%d",&Fahrenheit);

	// print the result
	if ((Fahrenheit > 0))
	{
		printf("\n%d Fahrenheit = %.2f Celsius\n \n",Fahrenheit,ConvertToCelsius(Fahrenheit));
	}
	else{
		printf("\nPlease enter valid length or width.\n \n");
	}
	
	return 0;
}