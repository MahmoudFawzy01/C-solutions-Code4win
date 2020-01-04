#include<stdio.h>
#include<math.h>

float compoundInterest(int principle,int time,float rate)
{
	return principle * pow((1 + rate / 100), time);
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
		printf("\nCompound Interest = %f\n \n",compoundInterest(principle,time,rate));
	}
	else
	{
		printf("\nEnter valid value. \n \n");
	}
	
	return 0;
}