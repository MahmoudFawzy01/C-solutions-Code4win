#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1,num2,num3;
	
	// user interface
	// get signed value
	printf("\nEnter three sides of triangle: ");
	scanf("%d%d%d",&num1,&num2,&num3);
	 

    if((num1 + num2 > num3) && (num1 + num3 > num2) && (num3 + num2 > num1)) 
    {
        printf("Triangle is valid.");
    }
    else
    {
        printf("Triangle is not valid.");
    }
	
	
	// wait for any input
	getch();
	return 0;
}