#include<stdio.h>

#define GET_BIT(VAR,BIT_NUMBER) 			((VAR>>BIT_NUMBER)&(0x01))   // Move the desired bit to the first bit then anding it with 1 to make sure if it's 1 or 0

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	// signed value
	printf("\nInput number: ");
	scanf("%d",&num1);
	
	printf("\nInput nth bit number: ");
	scanf("%d",&num2);
	
	if ((num2 >= 0)&&(num2 < sizeof(int)*8))
	{
		printf("\nBit set successfully.\n");
		// print the result
		printf("%d bit of %d is set (%d)\n \n",num2,num1,GET_BIT(num1,num2));
	}
	

	
	return 0;
}