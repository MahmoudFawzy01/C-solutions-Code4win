#include<stdio.h>

float ConvertToMeter (int cm)
{
	return (cm / 100.0);
}
float ConvertToKilometer (int cm)
{
	return (cm / 100000.0);
}

int main (void)
{
	// var declration 
	int cm;
	
	// user interface
	printf("\nEnter length in centimeter: ");
	scanf("%d",&cm);

	
	// print the result
	if ((cm > 0))
	{
		printf("\nLength in meter = %.2f m\n \n",ConvertToMeter(cm));
		printf("\nLength in kilometer = %.2f km\n \n",ConvertToKilometer(cm));
	}
	else{
		printf("\nPlease enter valid length or width.\n \n");
	}
	
	
	return 0;
}