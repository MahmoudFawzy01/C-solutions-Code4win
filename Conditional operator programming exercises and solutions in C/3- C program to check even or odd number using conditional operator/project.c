#include<stdio.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
    printf("Enter any number to check even or odd: ");
    scanf("%d", &num1);
	
	// get and print even / odd
     (num1%2 == 0) ? printf("The number is EVEN"):printf("The number is ODD");
	 
	return 0;
}