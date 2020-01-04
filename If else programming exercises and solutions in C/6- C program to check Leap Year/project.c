#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nInput Year: ");
	scanf("%d",&num1);
	
    if(((num1 % 4 == 0) && (num1 % 100 !=0)) || (num1 % 400==0))
    {
        printf("LEAP YEAR");
    }
    else
    {
        printf("COMMON YEAR");
    }
	
	// wait for any input
	getch();
	return 0;
}