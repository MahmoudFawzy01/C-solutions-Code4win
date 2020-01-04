#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
    int num1, i, count = 0,curentDigit,lastDigit;

	// user interface
	// get signed value

  
    printf("Input N: ");
    scanf("%d", &num1);
	
	
	lastDigit = num1%10;
	num1 /= 10;
	for (;num1>0;)
	{
		curentDigit = num1%10;
		num1/=10;
	}
    printf("Sum of first and last digit: %d\n",curentDigit+lastDigit);
	
	// wait for any input
	getch();
	return 0;
}