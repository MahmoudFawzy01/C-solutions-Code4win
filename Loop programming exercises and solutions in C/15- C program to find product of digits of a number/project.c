#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
    int num1, i, sum = 1,curentDigit,lastDigit;

	// user interface
	// get signed value

  
    printf("Input N: ");
    scanf("%d", &num1);
	
	for (;num1>0;)
	{
		curentDigit = num1%10;
		num1/=10;
		sum = sum * curentDigit;
	}
    printf("Sum of digits: %d\n",sum);
	
	// wait for any input
	getch();
	return 0;
}