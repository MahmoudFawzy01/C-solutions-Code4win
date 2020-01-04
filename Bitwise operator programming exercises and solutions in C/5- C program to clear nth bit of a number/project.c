#include<stdio.h>

#define CLR_BIT(VAR,BIT_NUMBER)			(VAR) &=~	(1<<(BIT_NUMBER))  // and 0 with the desigred bit to clr(set to 0)

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	// signed value
	printf("\nEnter any number: ");
	scanf("%d",&num1);
	
	printf("\nInput nth bit to clear (0:31): ");
	scanf("%d",&num2);
	
	if ((num2>=0)&&(num2<(sizeof(int)*8)))
	{
		// print the result
		printf("Number before clear : %d (in decimal).\n",num1);
		printf("Number after  clear : %d (in decimal).\n",CLR_BIT(num1,num2));
	}
	
	
	return 0;
}