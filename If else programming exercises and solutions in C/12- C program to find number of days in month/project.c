#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nEnter month number: ");
	scanf("%c",&num1);
	
	if(num1 == 1)
    {
        printf("31 days");
    }
    else if(num1 == 2)
    {
        printf("28 or 29 days");
    }
    else if(num1 == 3)
    {
        printf("31 days");
    }
    else if(num1 == 4)
    {
        printf("30 days");
    }
    else if(num1 == 5)
    {
        printf("31 days");
    }
    else if(num1 == 6)
    {
        printf("30 days");
    }
    else if(num1 == 7)
    {
        printf("31 days");
    }
    else if(num1 == 8)
    {
        printf("31 days");
    }
    else if(num1 == 9)
    {
        printf("30 days");
    }
    else if(num1 == 10)
    {
        printf("31 days");
    }
    else if(num1 == 11)
    {
        printf("30 days");
    }
    else if(num1 == 12)
    {
        printf("31 days");
    }
    else
    {
        printf("Invalid input! Please enter month number between (1-12).");
    }
	
	// wait for any input
	getch();
	return 0;
}