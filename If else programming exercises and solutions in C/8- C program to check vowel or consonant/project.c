#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	int num1;
	
	// user interface
	// get signed value
	printf("\nEnter any character: ");
	scanf("%c",&num1);
	
    if(num1=='a'|| num1=='e' || num1=='i' || num1=='o' || num1=='u' || num1=='A' || num1=='E' || num1=='I' || num1=='O' || num1=='U')
    {
        printf("'%c' is Vowel.", num1);
    }
    else if((num1 >= 'a' && num1 <= 'z') || (num1 >= 'A' && num1 <= 'Z'))
    {
        printf("'%c' is Consonant.", num1);
    }
    else 
    {
		printf("'%c' is not an alphabet.", num1);
	}
	
	
	// wait for any input
	getch();
	return 0;
}