#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
    int num1, i, count = 0;

	// user interface
	// get signed value

  
    printf("Input N: ");
    scanf("%d", &num1);
	
	for (;num1>0;)
	{
		num1/=10;
		count++;
	}
    printf("Number of digits: %d\n",count);
	
	// wait for any input
	getch();
	return 0;
}