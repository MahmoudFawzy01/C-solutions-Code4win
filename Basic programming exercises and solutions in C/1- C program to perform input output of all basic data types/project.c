#include <stdio.h>
	/*
     * By : MF
     */
int main(void)
{
	/*
     * Declare all primitive and derived types
     */
	 
	unsigned char 	u8; 						 // 1 byte = 8 bit
	signed char 	s8;							 // 1 byte = 8 bit
 
	unsigned short int u16;						 // 2 bytes = 16 bit
	signed short int s16;						 // 2 bytes = 16 bit
 
	unsigned long int u32;						 // 4 bytes = 32 bit
	signed long int s32;						 // 4 bytes = 32 bit
 
	unsigned long long int u64;				 	 // 8 bytes = 64 bit
	signed long long int s64;					 // 8 bytes = 64 bit
 
	float 	f32;								 // 4 bytes = 32 bit
	double f64;									 // 8 bytes = 64 bit
////////////////////////////////////////////////////////////////////////////////// 

    /*
     * Read inputs in each data type
     */
    printf("Enter a character: ");
    s8 = getchar();
    getchar(); // <-- Dummy getchar() to capture enter
    
    printf("Enter another character: ");
    u8 = getchar();
    getchar(); // <-- Dummy getchar() to capture enter
    
    printf("Enter a signed short value: ");
    scanf("%hi", &s16);
    
    printf("Enter an unsigned short value: ");
    scanf("%hu", &u16);
    
    printf("Enter an signed integer value: ");
    scanf("%d", &s32);
    
    printf("Enter an unsigned integer value: ");
    scanf("%lu", &u32);
    
    printf("Enter a signed long value: ");
    scanf("%ld", &s64);
    
    printf("Enter an unsigned long value: ");
    scanf("%lu", &u64);
    
    printf("Enter a float value: ");
    scanf("%f", &f32);
    
    printf("Enter a double value: ");
    scanf("%lf", &f64);
   
//////////////////////////////////////////////////////////////////////////////////   
    
    /*
     * Print the value of all variable
     */
    printf("\nYou entered character: '%c' \n", s8);
    printf("You entered unsigned character: '%c' \n\n", u8);
    
    printf("You entered signed short integer: %hi \n", s16);
    printf("You entered unsigned short integer: %hu \n\n", u16);
    
    
    printf("You entered signed long integer: %ld \n", s32);
    printf("You entered unsigned long integer: %lu \n\n", u32);
    
    printf("You entered signed long long integer: %lld \n", s64);
    printf("You entered unsigned long long integer: %llu \n\n", u64);
    
    printf("You entered float: %f \n", f32);
    printf("You entered double: %lf \n", f64);


    return 0;
}