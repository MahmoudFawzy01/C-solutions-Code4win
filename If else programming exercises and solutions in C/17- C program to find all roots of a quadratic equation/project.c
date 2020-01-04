#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	float num1,num2,num3;
	float root1, root2, imaginary;
    float discriminant;
	
	// user interface
	// get signed value
	printf("\nEnter values of a, b, c of quadratic equation (aX^2 + bX + c): ");
	scanf("%f%f%f",&num1,&num2,&num3);
	 
    discriminant = (num2 * num2) - (4 * num1 * num3);
    

    if(discriminant > 0)
    {
        root1 = (-num2 + sqrt(discriminant)) / (2*num1);
        root2 = (-num2 - sqrt(discriminant)) / (2*num1);

        printf("Two distinct and real roots exists: %.2f and %.2f", root1, root2);
    }
    else if(discriminant == 0)
    {
        root1 = root2 = -num2 / (2 * num1);

        printf("Two equal and real roots exists: %.2f and %.2f", root1, root2);
    }
    else if(discriminant < 0)
    {
        root1 = root2 = -num2 / (2 * num1);
        imaginary = sqrt(-discriminant) / (2 * num1);

        printf("Two distinct complex roots exists: %.2f + i%.2f and %.2f - i%.2f", 
                root1, imaginary, root2, imaginary);
    }
	
   
	
	// wait for any input
	getch();
	return 0;
}