#include <stdio.h>
#define TIMER_BASE 0x11020
#define LIST_SIZE 35
#define CLK_PERIOD 20 //in nanoseconds - 50 MHz

int list[LIST_SIZE] = {4, 5, 3, 6, 1, 8, 2, 12, 34, 7, 11, 81, 43, 15, 76, 35, 21, 29, 47, 32, 10, 77, 65, 62, 19, 95, 48, 55, 33, 13, 89, 92, 83, 42, 0};
//--- Return the largest number in an array
int test_program()
{
	int big, i;
	big = list[0];
	for (i = 1; i < LIST_SIZE; i++)
	{
		if (list[i] > big)
			big = list[i];
	}
	return big;
}

//--- Main
int main()
{
	//Test
	printf("sizeof(char)=%d\nsizeof(short)=%d\nsizeof(int)=%d\nsizeof(long)=%d\n", sizeof(char), sizeof(short), sizeof(int), sizeof(long));
	//EndTest
	unsigned int* timer = TIMER_BASE;
	unsigned int timer_data[2];
	*(timer + 1) = 8; //Stop timer
	*(timer + 2) = 0xffff; //Set periodl registor to max value
	*(timer + 3) = 0xffff; //Set periodh registor to max value
	*(timer + 1) = 4; //Start timer
	test_program(); //Run test program
	*(timer + 4) = 0; //Indicate timer to take a snapshot
	timer_data[0] = *(timer + 4); //Get snapl register value
	timer_data[1] = *(timer + 5); //Get snaph register value
	int cycles_elapsed = 0xffffffff - ((timer_data[1] << 16) & timer_data[0]); //Cycles elapsed during the test program
	int time_elapsed = cycles_elapsed * CLK_PERIOD;
	printf("Time elapsed = %d\n", time_elapsed);
	return 0;
}