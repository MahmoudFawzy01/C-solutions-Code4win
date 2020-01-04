#include<stdio.h>

float ConvertToFahrenheit (int Celsius)
{
	return ((Celsius * (9.0/5.0)) + 32);
}


int main (void)
{
	// var declration 
	int Celsius;
	
	// user interface
	printf("\nEnter temperature in Celsius: ");
	scanf("%d",&Celsius);

	// print the result
	if ((Celsius > 0))
	{
		printf("\n%d Celsius = %.2f Fahrenheit\n \n",Celsius,ConvertToFahrenheit(Celsius));
	}
	else{
		printf("\nPlease enter valid length or width.\n \n");
	}
	
	return 0;
}