#include<stdio.h>
#include<math.h>

int average(int * arr,int arr_size)
{
	int i,avg = 0;
	
	for(i = 0; i < arr_size ; i ++)
	{
		avg = avg + arr[i];
	}
	return avg/arr_size;
}

int total(int * arr,int arr_size)
{
	int i,total = 0;
	
	for(i = 0; i < arr_size ; i ++)
	{
		total = total + arr[i];
	}
	return total;
}

float precentage(int * arr,int arr_size)
{
	int i,total = 0;
	
	for(i = 0; i < arr_size ; i ++)
	{
		total = total + arr[i];
	}
	return (total/(float)(100*arr_size)) * 100;
}


int main (void)
{
	// var declration 
	int sub[5],arr_size;

	// user interface
	printf("\nEnter marks of the five subjecs: ");
	scanf("%d %d %d %d %d",&sub[0],&sub[1],&sub[2],&sub[3],&sub[4]);

	// print the result
	if ((sub[0] >= 0)&&(sub[1] >= 0)&&(sub[2] >= 0)&&(sub[3] >= 0)&&(sub[4] >= 0))
	{
		arr_size = sizeof(sub)/sizeof(int);
		
		printf("\nTotal = %d\n \n",total(sub,arr_size));
		printf("\nAverage = %d \n \n",average(sub,arr_size));
		printf("\nPrecentage = %.2f\n \n",precentage(sub,arr_size));
	}
	else
	{
		printf("\nEnter valid value. \n \n");
	}
	
	return 0;
}