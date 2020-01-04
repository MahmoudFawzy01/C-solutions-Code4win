#include <stdio.h>

int main()
{
    char char1;
    
    printf("Enter any character: ");
    scanf("%c", &char1);
    
    (char1>='a' && char1<='z') || (char1>='A' && char1<='Z')? printf("It is ALPHABET"): printf("It is NOT ALPHABET");

    return 0;
}