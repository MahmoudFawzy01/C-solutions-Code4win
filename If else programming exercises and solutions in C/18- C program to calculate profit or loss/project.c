#include <stdio.h>
#include <stdlib.h>

int main (void)
{
	// var declration 
	float CostPrice,SellingPrice;

	
	// user interface
	// get signed value
	printf("Input cost price: ");
	scanf("%f",&CostPrice);
	
	printf("Input selling price: ");
	scanf("%f",&SellingPrice);

    if(CostPrice < SellingPrice)
    {
        printf("Profit: %.2f.", SellingPrice - CostPrice);
    }
    else if(CostPrice > SellingPrice)
    {
        printf("Profit: %.2f.", CostPrice - SellingPrice);
    }
    else
    {
        printf("No Profits.");
    }
	
   
	
	// wait for any input
	getch();
	return 0;
}