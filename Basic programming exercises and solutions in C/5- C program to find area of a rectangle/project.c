#include<stdio.h>

int RectArea (int num1,int num2)
{
	return (num1 * num2);
}

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	printf("\nEnter Length: ");
	scanf("%d",&num1);
		
	printf("\nEnter Width: ");
	scanf("%d",&num2);
	
	// print the result
	if ((num1 > 0) && (num2>0))
	{
		printf("\nThe area of this rectangle is: %d sq. units\n \n",RectArea(num1,num2));
	}
	else{
		printf("\nPlease enter valid length or width.\n \n");
	}
	
	
	return 0;
}