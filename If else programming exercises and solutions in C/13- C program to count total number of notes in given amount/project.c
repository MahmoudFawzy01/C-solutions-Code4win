#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	int note1 = 0, note2= 0, note5= 0, note10= 0, note20= 0, note50= 0, note100= 0, note500= 0;
 	
	// user interface
	// get signed value
	printf("\nEnter amount: ");
	scanf("%d",&num1);
	
    if(num1 >= 500)
    {
        note500 = num1/500;
        num1 = num1 - note500 * 500;
    }
    if(num1 >= 100)
    {
        note100 = num1/100;
        num1 = num1 -  note100 * 100;
    }
    if(num1 >= 50)
    {
        note50 = num1/50;
        num1 = num1 -  note50 * 50;
    }
    if(num1 >= 20)
    {
        note20 = num1/20;
        num1 = num1 -  note20 * 20;
    }
    if(num1 >= 10)
    {
        note10 = num1/10;
        num1 = num1 -  note10 * 10;
    }
    if(num1 >= 5)
    {
        note5 = num1/5;
        num1 = num1 -  note5 * 5;
    }
    if(num1 >= 2)
    {
        note2 = num1 /2;
        num1 = num1 -  note2 * 2;
    }
    if(num1 >= 1)
    {
        note1 = num1;
    }

    printf("Total number of notes = \n");
    printf("500 = %d\n", note500);
    printf("100 = %d\n", note100);
    printf("50 = %d\n", note50);
    printf("20 = %d\n", note20);
    printf("10 = %d\n", note10);
    printf("5 = %d\n", note5);
    printf("2 = %d\n", note2);
    printf("1 = %d\n", note1);
	
	// wait for any input
	getch();
	return 0;
}