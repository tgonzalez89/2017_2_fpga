#include <stdio.h>
#include <altera_avalon_spi.h>

#define SPI_BASE 0x11000
#define TIMER_BASE (unsigned int*)0x11020
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
	// Parte 2 - Determinar tiempo de ejecucion de una aplicacion
	unsigned int* timer = TIMER_BASE;
	unsigned int timer_data[2];
	*(timer + 1) = 0x0008; //Stop timer
	*(timer + 2) = 0xffff; //Set periodl register to max value
	*(timer + 3) = 0xffff; //Set periodh register to max value
	*(timer + 1) = 0x0004; //Start timer
	test_program(); //Run test program
	*(timer + 4) = 0x0000; //Indicate timer to take a snapshot
	timer_data[0] = *(timer + 4); //Get snapl register value
	timer_data[1] = *(timer + 5); //Get snaph register value
	timer_data[1] = timer_data[1] << 16;
	unsigned int timer_data_joined = timer_data[1] | timer_data[0];
	int cycles_elapsed = 0xffffffff - timer_data_joined; //Cycles elapsed during the test program
	int time_elapsed = cycles_elapsed * CLK_PERIOD; //Time elapsed during the test program
	printf("Time elapsed = %d ns\n", time_elapsed);

	// Parte 5 - Utilizar el SPI para escribir y leer datos
	unsigned char write_data[2] = {0xaa, 0x81};
	unsigned char read_data[2];
	printf("write_data[0] = %x\n", write_data[0]);
	printf("write_data[1] = %x\n", write_data[1]);
	alt_avalon_spi_command(SPI_BASE, 0, 2, write_data, 2, read_data, ALT_AVALON_SPI_COMMAND_MERGE);
	printf("read_data[0] = %x\n", read_data[0]);
	printf("read_data[1] = %x\n", read_data[1]);

	return 0;
}
