#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
    int num1, i, sum = 0;

	// user interface
	// get signed value

  
    printf("Input N: ");

    scanf("%d", &num1);
	
	for (i = 1; i <= 10;i++)
	{
		 printf("%d * %d:	%d \n",num1,i,num1*i);
	}
   
	
	// wait for any input
	getch();
	return 0;
}