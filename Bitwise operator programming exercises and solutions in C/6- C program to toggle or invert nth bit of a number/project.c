#include<stdio.h>

#define TOGGLE_BIT(VAR,BIT_NUMBER)			(VAR) ^= 	(1<<(BIT_NUMBER))  // (bitwise exclusive or [^]) with the desired bit to toggle from 0 to 1 and from 1 to 0

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	// signed value
	printf("\nEnter any number: ");
	scanf("%d",&num1);
	
	printf("\nInput nth bit to toggle (0:31): ");
	scanf("%d",&num2);
	
	if ((num2>=0)&&(num2<(sizeof(int)*8)))
	{
		// print the result
		printf("Number before toggle : %d (in decimal).\n",num1);
		printf("Number after  toggle : %d (in decimal).\n",TOGGLE_BIT(num1,num2));
	}
	
	
	return 0;
}