#include <stdio.h>
#include <stdlib.h>

#include <math.h>

int main (void)
{
	// var declration 
    int num1, i, count = 0,curentDigit,lastDigit,tmpNum1,tmpNum,digits;

	// user interface
	// get signed value

  
    printf("Input N: ");
    scanf("%d", &num1);
	tmpNum1 = num1;
	
	lastDigit = num1%10;
	num1 /= 10;
	num1 *= 10;
	
	//tmpNum = num1;
	
	digits = (int) log10 (num1);
	
	curentDigit = num1 / ((int) pow(10,digits));
	
	num1 = num1 %((int)pow(10,digits));
	
	tmpNum = lastDigit * pow(10,digits) + num1 + curentDigit;
	
	
    printf("Original number: %d\nNumber after swapping first and last digit: %d\n",tmpNum1,tmpNum);
	
	// wait for any input
	getch();
	return 0;
}