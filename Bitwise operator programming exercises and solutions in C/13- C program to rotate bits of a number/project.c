#include<stdio.h>

#define GET_BIT(VAR,BIT_NUMBER) 			((VAR>>BIT_NUMBER)&(0x01))   // Move the desired bit to the first bit then anding it with 1 to make sure if it's 1 or 0         
#define SET_BIT(VAR,BIT_NUMBER)			(VAR) |= 	(1<<(BIT_NUMBER))  // assgin the desired bit  with 1 (or the VAR with 1)
#define CLR_BIT(VAR,BIT_NUMBER)			(VAR) &=~	(1<<(BIT_NUMBER))  // and 0 with the desigred bit to clr(set to 0)
#define ASSIGN_BIT(VAR,BIT_NUMBER,VALUE)	(VAR) = 	((VAR&(~(1<<BIT_NUMBER)))|(VALUE << BIT_NUMBER))  // CLR the desigres bit then assgin the desired value
#define INT_SIZE (sizeof(int)*8) - 1   // bits

int rotateLeft(int num, unsigned int rotations)
{
    int MSB,i;

    // The get the rem of rotations if > 31
    rotations %= INT_SIZE;
	for (i = 0;i<rotations;i++)
    {
        // Get MSB 
        MSB = GET_BIT(num,INT_SIZE); 
        // move the MSB to LSB
        num = (num << 1) | MSB;
    }

    return num;
}


long int rotateRight(int num, unsigned int rotations)
{
    int i,LSB;

    // The get the rem of rotations if > 31
    rotations %= INT_SIZE;

	for (i = 0;i<rotations;i++)
    {
        // Get LSB
        LSB = GET_BIT(num,0); 
        //shift right
		num = (num >> 1);
        //CLR and ASSIGN LSB to MSB
		ASSIGN_BIT(num,INT_SIZE,LSB);
    }

    return num;
}

int main()
{
    int num;
    unsigned int rotations;

    printf("Enter a number: ");
    scanf("%d", &num);

    printf("Enter number of rotation: ");
    scanf("%u", &rotations);

    printf("%d left rotated %u times = %d\n",  num, rotations,rotateLeft(num,rotations));
    printf("%d right rotated %u times = %d\n", num, rotations,rotateRight(num,rotations));

    return 0;
}

