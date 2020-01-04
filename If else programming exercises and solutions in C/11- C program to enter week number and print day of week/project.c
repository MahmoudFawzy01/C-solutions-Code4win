#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nEnter week number (1-7): ");
	scanf("%d",&num1);
	
	if(num1 == 1)
    {
        printf("Monday");
    }
    else if(num1 == 2)
    {
        printf("Tuesday");
    }
    else if(num1 == 3)
    {
        printf("Wednesday");
    }
    else if(num1 == 4)
    {
        printf("Thursday");
    }
    else if(num1 == 5)
    {
        printf("Friday");
    }
    else if(num1 == 6)
    {
        printf("Saturday");
    }
    else if(num1 == 7)
    {
        printf("Sunday");
    }
    else
    {
        printf("Invalid Input! Please enter week number between 1-7.");
    }
	
	// wait for any input
	getch();
	return 0;
}