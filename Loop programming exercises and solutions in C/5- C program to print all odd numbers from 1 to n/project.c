#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
    int num1, i;

	// user interface
	// get signed value

  
    printf("Input N: ");

    scanf("%d", &num1);
	
	for (i = 1; i <= num1;i++)
	{
		if (i%2 == 1)
		{
			printf("%d",i);
			if (i<num1-1)
			{
				printf(",");
			}	
		}
	}
    
	// wait for any input
	getch();
	return 0;
}