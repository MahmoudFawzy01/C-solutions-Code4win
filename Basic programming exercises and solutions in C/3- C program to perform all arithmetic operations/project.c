#include<stdio.h>

int Sum (int num1,int num2)
{
	return num1 + num2;
}
int Difference (int num1,int num2)
{
	return num1 - num2;
}
int Product (int num1,int num2)
{
	return num1 * num2;
}
int Quotient (int num1,int num2)
{
	return num1 / num2;
}
int Modulus (int num1,int num2)
{
	return num1 % num2;
}

int main (void)
{
	// var declration 
	int num1,num2;
	
	// user interface
	printf("\nEnter first number: ");
	scanf("%d",&num1);
		
	printf("\nEnter second number: ");
	scanf("%d",&num2);
	
	// print the result
	if ((num1 > 0) && (num2>0))
	{
		printf("\nThe sum result is: %d \n \n",Sum(num1,num2));
		printf("The Difference result is: %d \n \n",Difference(num1,num2));
		printf("The Product result is: %d \n \n",Product(num1,num2));
		printf("The Quotient result is: %d \n \n",Quotient(num1,num2));
		printf("The Modulus result is: %d \n \n",Modulus(num1,num2));
	}
	
	
	return 0;
}