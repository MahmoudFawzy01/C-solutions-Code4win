#include<stdio.h>

#define TOGGLE_BIT(VAR,BIT_NUMBER)			(VAR) ^= 	(1<<(BIT_NUMBER))  // (bitwise exclusive or [^]) with the desired bit to toggle from 0 to 1 and from 1 to 0

int main (void)
{
	// var declration 
	int num1,i, count = 0;
	
	// user interface
	// get signed value
	printf("\nEnter any number: ");
	scanf("%d",&num1);
	
	// toggle
	for (i = 0; i< (sizeof(int)*8) ; i++)
	{
		TOGGLE_BIT(num1,i);
	}
	
	// print toggled
	printf("Number after bits are flipped: %d (in decimal).\n",num1);
	
	return 0;
}