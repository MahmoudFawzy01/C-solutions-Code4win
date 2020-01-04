#include<stdio.h>

#define SET_BIT(VAR,BIT_NUMBER)			(VAR) |= 	(1<<(BIT_NUMBER))  // assgin the desired bit  with 1 (or the VAR with 1)

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	// signed value
	printf("\nEnter any number: ");
	scanf("%d",&num1);
	
	printf("\nEnter nth bit to set (0-31): ");
	scanf("%d",&num2);
	
	if ((num2 >= 0)&&(num2 < sizeof(int)*8))
	{
		printf("\nBit set successfully.\n");
	}
	//Number before setting 0 bit: 12 (in decimal)
	//Number after setting 0 bit: 13 (in decimal            ,SET_BIT(num1,num2)
	// print the result
	printf("Number before setting 0 bit: %d (in decimal).\n",num1);
	printf("Number after  setting 0 bit: %d (in decimal).\n",SET_BIT(num1,num2));
	
	return 0;
}