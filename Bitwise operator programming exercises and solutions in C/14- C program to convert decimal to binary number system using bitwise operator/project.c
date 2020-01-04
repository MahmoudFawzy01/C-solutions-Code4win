#include <stdio.h>
#define INT_SIZE sizeof(int) * 8 

int main()
{
    int num,i,arr[INT_SIZE];

	// user interface
    printf("Enter any number: ");
    scanf("%d", &num);

    for(i=0; i<INT_SIZE; i++)  
	{
        arr[i] = num & 1;
        num >>= 1;
    }

    printf("Converted binary: ");
    for(i=INT_SIZE - 1; i>= 0; i--)
    {
        printf("%d", arr[i]);
    }

    return 0;
}
