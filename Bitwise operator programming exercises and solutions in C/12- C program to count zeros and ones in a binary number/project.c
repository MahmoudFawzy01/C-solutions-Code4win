#include<stdio.h>

#define GET_BIT(VAR,BIT_NUMBER) 			((VAR>>BIT_NUMBER)&(0x01))   // Move the desired bit to the first bit then anding it with 1 to make sure if it's 1 or 0

int main (void)
{
	// var declration 
	int num1,i, zeros = 0,ones = 0;
	
	// user interface
	// get signed value
	printf("\nEnter any number: ");
	scanf("%d",&num1);
	
	// get zeros / ones
	for (i = 0; i< (sizeof(int)*8) ; i++)
	{
		if (GET_BIT(num1,i))
		{
			ones++;
		}
		else
		{
			zeros++;
		}
	}
	
	// print zeros / ones
	printf("Output number of ones: %d. \n",ones);
	printf("Output number of zeros: %d. \n",zeros);	
	
	return 0;
}