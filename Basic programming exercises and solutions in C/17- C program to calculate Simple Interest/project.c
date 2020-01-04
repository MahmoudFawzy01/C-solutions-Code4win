#include<stdio.h>
#include<math.h>

float simpleInterest(int principle,int time,float rate)
{
	return (principle*time*rate)/100.0;
}



int main (void)
{
	// var declration 
	int principle,time;
	float rate;

	// user interface
	printf("\nEnter principle (amount): ");
	scanf("%d",&principle);

	printf("\nEnter time: ");
	scanf("%d",&time);
	
	printf("\nEnter rate: ");
	scanf("%f",&rate);
	
	
	// print the result
	if ((principle > 0)&&(time > 0)&&(rate > 0))
	{
		printf("\nSimple Interest = %f\n \n",simpleInterest(principle,time,rate));
	}
	else
	{
		printf("\nEnter valid value. \n \n");
	}
	
	return 0;
}