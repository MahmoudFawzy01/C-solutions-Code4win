#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nInput number: ");
	scanf("%d",&num1);
	
	switch (num1 > 0)
    {
        case 1:
            printf("%d is positive.", num1);
        break;
        case 0:
            switch (num1 < 0)
            {
                case 1: 
                    printf("%d is negative.", num1);
                    break;
                case 0:
                    printf("%d is zero.", num1);
                    break;
            }
        break;
    }
	
	// wait for any input
	getch();
	return 0;
}