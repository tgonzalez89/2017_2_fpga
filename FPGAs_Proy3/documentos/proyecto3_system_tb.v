// proyecto3_system_tb.v

// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps

module slave (
    MISO,
    MOSI,
    SCLK,
    SS_n
);
    output reg MISO;
    input MOSI;
    input SCLK;
    input SS_n;
    
    //reg [2:0] count;
    reg [7:0] rxdata;
    //reg [7:0] txdata;

    always@(posedge SCLK) begin
        if (!SS_n) begin
            rxdata[0] <= MOSI;
            rxdata[7:1] <= rxdata[6:0];
            MISO <= $random%2;
        end
    end
    
    always@(posedge SS_n) begin
        $display("rxdata: %h", rxdata);
    end

endmodule

module proyecto3_system_tb (
	);

	wire    proyecto3_system_inst_clk_bfm_clk_clk;       // proyecto3_system_inst_clk_bfm:clk -> [proyecto3_system_inst:clk_clk, proyecto3_system_inst_reset_bfm:clk]
	wire    proyecto3_system_inst_reset_bfm_reset_reset; // proyecto3_system_inst_reset_bfm:reset -> proyecto3_system_inst:reset_reset_n
    wire MISO, MOSI, SCLK, SS_n;

	proyecto3_system proyecto3_system_inst (
		.clk_clk       (proyecto3_system_inst_clk_bfm_clk_clk),       //    clk.clk
		.reset_reset_n (proyecto3_system_inst_reset_bfm_reset_reset), //  reset.reset_n
		.spi_io_MISO   (MISO),                                            // spi_io.MISO
		.spi_io_MOSI   (MOSI),                                            //       .MOSI
		.spi_io_SCLK   (SCLK),                                            //       .SCLK
		.spi_io_SS_n   (SS_n)                                             //       .SS_n
	);

    slave slave_inst (
        .MISO (MISO),
        .MOSI (MOSI),
        .SCLK (SCLK),
        .SS_n (SS_n)
    );

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) proyecto3_system_inst_clk_bfm (
		.clk (proyecto3_system_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) proyecto3_system_inst_reset_bfm (
		.reset (proyecto3_system_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (proyecto3_system_inst_clk_bfm_clk_clk)        //   clk.clk
	);

endmodule
