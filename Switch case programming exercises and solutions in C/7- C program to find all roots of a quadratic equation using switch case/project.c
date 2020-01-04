#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	char operation;
    float num1, num2, result=0.0f;

	// user interface
	// get signed value

    printf("WELCOME TO SIMPLE CALCULATOR\n");
    printf("----------------------------\n");
    printf("Enter [number 1] [+ - * /] [number 2]\n");

    scanf("%f %c %f", &num1, &operation, &num2);

    switch(operation)
    {
        case '+': 
            result = num1 + num2;
            break;

        case '-': 
            result = num1 - num2;
            break;

        case '*': 
            result = num1 * num2;
            break;

        case '/': 
            result = num1 / num2;
            break;

        default: 
            printf("Invalid operator");
    }

	printf("%.2f %c %.2f = %.2f", num1, operation, num2, result);
	
	// wait for any input
	getch();
	return 0;
}