#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	char i;

	// user interface
	// get signed value

	for (i = 'a'; i <= 'z';i++)
	{
		printf("%c",i);
		if (i<'z')
		{
			printf(",");
		}
	}
    
	// wait for any input
	getch();
	return 0;
}