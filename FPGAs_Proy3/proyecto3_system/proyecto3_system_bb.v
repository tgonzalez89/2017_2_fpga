
module proyecto3_system (
	clk_clk,
	reset_reset_n,
	spi_io_MISO,
	spi_io_MOSI,
	spi_io_SCLK,
	spi_io_SS_n);	

	input		clk_clk;
	input		reset_reset_n;
	input		spi_io_MISO;
	output		spi_io_MOSI;
	output		spi_io_SCLK;
	output		spi_io_SS_n;
endmodule
