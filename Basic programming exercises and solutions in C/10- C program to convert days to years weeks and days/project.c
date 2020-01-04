#include<stdio.h>

int daysToYear (int days)
{
	return days / 365;
}
int daysToWeek (int days,int years)
{
	return (days - (years * 365)) / 7;
}
int remainingDays (int days,int weeks,int years)
{
	return days - ((years * 365) + (weeks * 7));
}


int main (void)
{
	// var declration 
	int days,weeks,years;
	
	// user interface
	printf("\nEnter days: ");
	scanf("%d",&days);
	
	// print the result
	if ((days > 0))
	{
		years = daysToYear(days);
		weeks = daysToWeek(days,years);
		printf("\n%d days = %d year, %d week, %d day.\n \n",days,years,weeks,remainingDays(days,weeks,years));
	}
	else{
		printf("\nPlease enter valid value.\n \n");
	}
	
	return 0;
}