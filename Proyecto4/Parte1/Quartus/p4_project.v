`timescale 1ns/100ps

module p4_project (
		input  wire  clk_clk,       //    clk.clk
		input  wire  reset_reset_n, //  reset.reset_n
		input  wire  spi_io_MISO,   // spi_io.MISO
		output wire  spi_io_MOSI,   //       .MOSI
		output wire  spi_io_SCLK,   //       .SCLK
		output wire  spi_io_SS_n    //       .SS_n
	);
	
	
	wire  [63:0] pll_0_reconfig_from_pll_reconfig_from_pll;                       // pll_0:reconfig_from_pll -> pll_reconfig_0:reconfig_from_pll
	wire  [63:0] pll_reconfig_0_reconfig_to_pll_reconfig_to_pll;                  // pll_reconfig_0:reconfig_to_pll -> pll_0:reconfig_to_pll
	wire  [31:0] packets_to_master_0_avalon_master_readdata;                      // mm_interconnect_0:packets_to_master_0_avalon_master_readdata -> packets_to_master_0:readdata
	wire         packets_to_master_0_avalon_master_waitrequest;                   // mm_interconnect_0:packets_to_master_0_avalon_master_waitrequest -> packets_to_master_0:waitrequest
	wire  [31:0] packets_to_master_0_avalon_master_address;                       // packets_to_master_0:address -> mm_interconnect_0:packets_to_master_0_avalon_master_address
	wire         packets_to_master_0_avalon_master_read;                          // packets_to_master_0:read -> mm_interconnect_0:packets_to_master_0_avalon_master_read
	wire   [3:0] packets_to_master_0_avalon_master_byteenable;                    // packets_to_master_0:byteenable -> mm_interconnect_0:packets_to_master_0_avalon_master_byteenable
	wire         packets_to_master_0_avalon_master_readdatavalid;                 // mm_interconnect_0:packets_to_master_0_avalon_master_readdatavalid -> packets_to_master_0:readdatavalid
	wire         packets_to_master_0_avalon_master_write;                         // packets_to_master_0:write -> mm_interconnect_0:packets_to_master_0_avalon_master_write
	wire  [31:0] packets_to_master_0_avalon_master_writedata;                     // packets_to_master_0:writedata -> mm_interconnect_0:packets_to_master_0_avalon_master_writedata
	wire  [31:0] packets_to_master_1_avalon_master_readdata;                      // mm_interconnect_0:packets_to_master_1_avalon_master_readdata -> packets_to_master_1:readdata
	wire         packets_to_master_1_avalon_master_waitrequest;                   // mm_interconnect_0:packets_to_master_1_avalon_master_waitrequest -> packets_to_master_1:waitrequest
	wire  [31:0] packets_to_master_1_avalon_master_address;                       // packets_to_master_1:address -> mm_interconnect_0:packets_to_master_1_avalon_master_address
	wire         packets_to_master_1_avalon_master_read;                          // packets_to_master_1:read -> mm_interconnect_0:packets_to_master_1_avalon_master_read
	wire   [3:0] packets_to_master_1_avalon_master_byteenable;                    // packets_to_master_1:byteenable -> mm_interconnect_0:packets_to_master_1_avalon_master_byteenable
	wire         packets_to_master_1_avalon_master_readdatavalid;                 // mm_interconnect_0:packets_to_master_1_avalon_master_readdatavalid -> packets_to_master_1:readdatavalid
	wire         packets_to_master_1_avalon_master_write;                         // packets_to_master_1:write -> mm_interconnect_0:packets_to_master_1_avalon_master_write
	wire  [31:0] packets_to_master_1_avalon_master_writedata;                     // packets_to_master_1:writedata -> mm_interconnect_0:packets_to_master_1_avalon_master_writedata
	wire  [31:0] nios_ii_processor_data_master_readdata;                          // mm_interconnect_0:nios_ii_processor_data_master_readdata -> nios_ii_processor:d_readdata
	wire         nios_ii_processor_data_master_waitrequest;                       // mm_interconnect_0:nios_ii_processor_data_master_waitrequest -> nios_ii_processor:d_waitrequest
	wire         nios_ii_processor_data_master_debugaccess;                       // nios_ii_processor:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios_ii_processor_data_master_debugaccess
	wire  [16:0] nios_ii_processor_data_master_address;                           // nios_ii_processor:d_address -> mm_interconnect_0:nios_ii_processor_data_master_address
	wire   [3:0] nios_ii_processor_data_master_byteenable;                        // nios_ii_processor:d_byteenable -> mm_interconnect_0:nios_ii_processor_data_master_byteenable
	wire         nios_ii_processor_data_master_read;                              // nios_ii_processor:d_read -> mm_interconnect_0:nios_ii_processor_data_master_read
	wire         nios_ii_processor_data_master_write;                             // nios_ii_processor:d_write -> mm_interconnect_0:nios_ii_processor_data_master_write
	wire  [31:0] nios_ii_processor_data_master_writedata;                         // nios_ii_processor:d_writedata -> mm_interconnect_0:nios_ii_processor_data_master_writedata
	wire  [31:0] nios_ii_processor_instruction_master_readdata;                   // mm_interconnect_0:nios_ii_processor_instruction_master_readdata -> nios_ii_processor:i_readdata
	wire         nios_ii_processor_instruction_master_waitrequest;                // mm_interconnect_0:nios_ii_processor_instruction_master_waitrequest -> nios_ii_processor:i_waitrequest
	wire  [16:0] nios_ii_processor_instruction_master_address;                    // nios_ii_processor:i_address -> mm_interconnect_0:nios_ii_processor_instruction_master_address
	wire         nios_ii_processor_instruction_master_read;                       // nios_ii_processor:i_read -> mm_interconnect_0:nios_ii_processor_instruction_master_read
	wire  [31:0] i2c_avalon_master_readdata;                                      // mm_interconnect_0:i2c_avalon_master_readdata -> i2c:readdata
	wire         i2c_avalon_master_waitrequest;                                   // mm_interconnect_0:i2c_avalon_master_waitrequest -> i2c:waitrequest
	wire  [31:0] i2c_avalon_master_address;                                       // i2c:address -> mm_interconnect_0:i2c_avalon_master_address
	wire         i2c_avalon_master_read;                                          // i2c:read -> mm_interconnect_0:i2c_avalon_master_read
	wire   [3:0] i2c_avalon_master_byteenable;                                    // i2c:byteenable -> mm_interconnect_0:i2c_avalon_master_byteenable
	wire         i2c_avalon_master_readdatavalid;                                 // mm_interconnect_0:i2c_avalon_master_readdatavalid -> i2c:readdatavalid
	wire         i2c_avalon_master_write;                                         // i2c:write -> mm_interconnect_0:i2c_avalon_master_write
	wire  [31:0] i2c_avalon_master_writedata;                                     // i2c:writedata -> mm_interconnect_0:i2c_avalon_master_writedata
	wire  [31:0] mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_readdata;     // pll_reconfig_0:mgmt_readdata -> mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_readdata
	wire         mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_waitrequest;  // pll_reconfig_0:mgmt_waitrequest -> mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_waitrequest
	wire   [5:0] mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_address;      // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_address -> pll_reconfig_0:mgmt_address
	wire         mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_read;         // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_read -> pll_reconfig_0:mgmt_read
	wire         mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_write;        // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_write -> pll_reconfig_0:mgmt_write
	wire  [31:0] mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_writedata;    // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_writedata -> pll_reconfig_0:mgmt_writedata
	wire  [31:0] mm_interconnect_0_nios_ii_processor_debug_mem_slave_readdata;    // nios_ii_processor:debug_mem_slave_readdata -> mm_interconnect_0:nios_ii_processor_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios_ii_processor_debug_mem_slave_waitrequest; // nios_ii_processor:debug_mem_slave_waitrequest -> mm_interconnect_0:nios_ii_processor_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios_ii_processor_debug_mem_slave_debugaccess; // mm_interconnect_0:nios_ii_processor_debug_mem_slave_debugaccess -> nios_ii_processor:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios_ii_processor_debug_mem_slave_address;     // mm_interconnect_0:nios_ii_processor_debug_mem_slave_address -> nios_ii_processor:debug_mem_slave_address
	wire         mm_interconnect_0_nios_ii_processor_debug_mem_slave_read;        // mm_interconnect_0:nios_ii_processor_debug_mem_slave_read -> nios_ii_processor:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios_ii_processor_debug_mem_slave_byteenable;  // mm_interconnect_0:nios_ii_processor_debug_mem_slave_byteenable -> nios_ii_processor:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios_ii_processor_debug_mem_slave_write;       // mm_interconnect_0:nios_ii_processor_debug_mem_slave_write -> nios_ii_processor:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios_ii_processor_debug_mem_slave_writedata;   // mm_interconnect_0:nios_ii_processor_debug_mem_slave_writedata -> nios_ii_processor:debug_mem_slave_writedata
	wire         mm_interconnect_0_wdt_s1_chipselect;                             // mm_interconnect_0:wdt_s1_chipselect -> wdt:chipselect
	wire  [15:0] mm_interconnect_0_wdt_s1_readdata;                               // wdt:readdata -> mm_interconnect_0:wdt_s1_readdata
	wire   [2:0] mm_interconnect_0_wdt_s1_address;                                // mm_interconnect_0:wdt_s1_address -> wdt:address
	wire         mm_interconnect_0_wdt_s1_write;                                  // mm_interconnect_0:wdt_s1_write -> wdt:write_n
	wire  [15:0] mm_interconnect_0_wdt_s1_writedata;                              // mm_interconnect_0:wdt_s1_writedata -> wdt:writedata
	wire         mm_interconnect_0_on_chip_memory_s1_chipselect;                  // mm_interconnect_0:on_chip_memory_s1_chipselect -> on_chip_memory:chipselect
	wire  [15:0] mm_interconnect_0_on_chip_memory_s1_readdata;                    // on_chip_memory:readdata -> mm_interconnect_0:on_chip_memory_s1_readdata
	wire   [8:0] mm_interconnect_0_on_chip_memory_s1_address;                     // mm_interconnect_0:on_chip_memory_s1_address -> on_chip_memory:address
	wire   [1:0] mm_interconnect_0_on_chip_memory_s1_byteenable;                  // mm_interconnect_0:on_chip_memory_s1_byteenable -> on_chip_memory:byteenable
	wire         mm_interconnect_0_on_chip_memory_s1_write;                       // mm_interconnect_0:on_chip_memory_s1_write -> on_chip_memory:write
	wire  [15:0] mm_interconnect_0_on_chip_memory_s1_writedata;                   // mm_interconnect_0:on_chip_memory_s1_writedata -> on_chip_memory:writedata
	wire         mm_interconnect_0_on_chip_memory_s1_clken;                       // mm_interconnect_0:on_chip_memory_s1_clken -> on_chip_memory:clken
	wire         mm_interconnect_0_spi_spi_control_port_chipselect;               // mm_interconnect_0:spi_spi_control_port_chipselect -> spi:spi_select
	wire  [15:0] mm_interconnect_0_spi_spi_control_port_readdata;                 // spi:data_to_cpu -> mm_interconnect_0:spi_spi_control_port_readdata
	wire   [2:0] mm_interconnect_0_spi_spi_control_port_address;                  // mm_interconnect_0:spi_spi_control_port_address -> spi:mem_addr
	wire         mm_interconnect_0_spi_spi_control_port_read;                     // mm_interconnect_0:spi_spi_control_port_read -> spi:read_n
	wire         mm_interconnect_0_spi_spi_control_port_write;                    // mm_interconnect_0:spi_spi_control_port_write -> spi:write_n
	wire  [15:0] mm_interconnect_0_spi_spi_control_port_writedata;                // mm_interconnect_0:spi_spi_control_port_writedata -> spi:data_from_cpu
	wire         irq_mapper_receiver0_irq;                                        // wdt:irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios_ii_processor_irq_irq;                                       // irq_mapper:sender_irq -> nios_ii_processor:irq
	wire         rst_controller_reset_out_reset;                                  // rst_controller:reset_out -> [fft_ii_0:reset_n, fft_ii_1:reset_n, i2c:rst_n, irq_mapper:reset, mm_interconnect_0:packets_to_master_0_clk_reset_reset_bridge_in_reset_reset, nios_ii_processor:reset_n, on_chip_memory:reset, packets_to_master_0:reset_n, packets_to_master_1:reset_n, pll_reconfig_0:mgmt_reset, rst_translator:in_reset, spi:reset_n, wdt:reset_n]
	wire         rst_controller_reset_out_reset_req;                              // rst_controller:reset_req -> [nios_ii_processor:reset_req, on_chip_memory:reset_req, rst_translator:reset_req_in]
	wire         fft_ii_0_inverse;                                                // port fragment
	wire   [7:0] fft_ii_0_source_imag;                                            // port fragment
	wire   [7:0] fft_ii_0_source_real;                                            // port fragment
	wire   [7:0] fft_ii_0_sink_real;                                              // port fragment
	wire   [9:0] fft_ii_0_fftpts_out;                                             // port fragment
	wire   [9:0] fft_ii_0_fftpts_in;                                              // port fragment
	wire   [7:0] fft_ii_0_sink_imag;                                              // port fragment
	wire         fft_ii_1_inverse;                                                // port fragment
	wire   [7:0] fft_ii_1_source_imag;                                            // port fragment
	wire   [7:0] fft_ii_1_source_real;                                            // port fragment
	wire   [7:0] fft_ii_1_sink_real;                                              // port fragment
	wire   [9:0] fft_ii_1_fftpts_out;                                             // port fragment
	wire   [9:0] fft_ii_1_fftpts_in;                                              // port fragment
	wire   [7:0] fft_ii_1_sink_imag;                                              // port fragment
	
	
	
	
	proyecto3_system_fft_ii_0 fft_ii_0 (
		.clk          (clk_clk),                         //    clk.clk
		.reset_n      (~rst_controller_reset_out_reset), //    rst.reset_n
		.sink_valid   (),                                //   sink.valid
		.sink_ready   (),                                //       .ready
		.sink_error   (),                                //       .error
		.sink_sop     (),                                //       .startofpacket
		.sink_eop     (),                                //       .endofpacket
		.source_valid (),                                // source.valid
		.source_ready (),                                //       .ready
		.source_error (),                                //       .error
		.source_sop   (),                                //       .startofpacket
		.source_eop   ()                                 //       .endofpacket
	);

	proyecto3_system_fft_ii_1 fft_ii_1 (
		.clk          (clk_clk),                         //    clk.clk
		.reset_n      (~rst_controller_reset_out_reset), //    rst.reset_n
		.sink_valid   (),                                //   sink.valid
		.sink_ready   (),                                //       .ready
		.sink_error   (),                                //       .error
		.sink_sop     (),                                //       .startofpacket
		.sink_eop     (),                                //       .endofpacket
		.source_valid (),                                // source.valid
		.source_ready (),                                //       .ready
		.source_error (),                                //       .error
		.source_sop   (),                                //       .startofpacket
		.source_eop   ()                                 //       .endofpacket
	);

	altera_i2cslave_to_avlmm_bridge #(
		.I2C_SLAVE_ADDRESS (7'b1010101),
		.BYTE_ADDRESSING   (2),
		.ADDRESS_STEALING  (0),
		.READ_ONLY         (0)
	) i2c (
		.clk           (clk_clk),                         //         clock.clk
		.address       (i2c_avalon_master_address),       // avalon_master.address
		.read          (i2c_avalon_master_read),          //              .read
		.readdata      (i2c_avalon_master_readdata),      //              .readdata
		.readdatavalid (i2c_avalon_master_readdatavalid), //              .readdatavalid
		.waitrequest   (i2c_avalon_master_waitrequest),   //              .waitrequest
		.write         (i2c_avalon_master_write),         //              .write
		.byteenable    (i2c_avalon_master_byteenable),    //              .byteenable
		.writedata     (i2c_avalon_master_writedata),     //              .writedata
		.rst_n         (~rst_controller_reset_out_reset), //         reset.reset_n
		.i2c_data_in   (),                                //   conduit_end.conduit_data_in
		.i2c_clk_in    (),                                //              .conduit_clk_in
		.i2c_data_oe   (),                                //              .conduit_data_oe
		.i2c_clk_oe    ()                                 //              .conduit_clk_oe
	);

	proyecto3_system_nios_ii_processor nios_ii_processor (
		.clk                                 (clk_clk),                                                         //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                                 //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                              //                          .reset_req
		.d_address                           (nios_ii_processor_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios_ii_processor_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios_ii_processor_data_master_read),                              //                          .read
		.d_readdata                          (nios_ii_processor_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios_ii_processor_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios_ii_processor_data_master_write),                             //                          .write
		.d_writedata                         (nios_ii_processor_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios_ii_processor_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios_ii_processor_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios_ii_processor_instruction_master_read),                       //                          .read
		.i_readdata                          (nios_ii_processor_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios_ii_processor_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios_ii_processor_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (),                                                                //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios_ii_processor_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios_ii_processor_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios_ii_processor_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios_ii_processor_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios_ii_processor_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios_ii_processor_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios_ii_processor_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios_ii_processor_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                                 // custom_instruction_master.readra
	);

	proyecto3_system_on_chip_memory on_chip_memory (
		.clk        (clk_clk),                                        //   clk1.clk
		.address    (mm_interconnect_0_on_chip_memory_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_on_chip_memory_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_on_chip_memory_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_on_chip_memory_s1_write),      //       .write
		.readdata   (mm_interconnect_0_on_chip_memory_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_on_chip_memory_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_on_chip_memory_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                 // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req)              //       .reset_req
	);

	altera_avalon_packets_to_master #(
		.FAST_VER    (0),
		.FIFO_DEPTHS (2),
		.FIFO_WIDTHU (1)
	) packets_to_master_0 (
		.clk               (clk_clk),                                         //           clk.clk
		.reset_n           (~rst_controller_reset_out_reset),                 //     clk_reset.reset_n
		.out_ready         (),                                                //    out_stream.ready
		.out_valid         (),                                                //              .valid
		.out_data          (),                                                //              .data
		.out_startofpacket (),                                                //              .startofpacket
		.out_endofpacket   (),                                                //              .endofpacket
		.in_ready          (),                                                //     in_stream.ready
		.in_valid          (),                                                //              .valid
		.in_data           (),                                                //              .data
		.in_startofpacket  (),                                                //              .startofpacket
		.in_endofpacket    (),                                                //              .endofpacket
		.address           (packets_to_master_0_avalon_master_address),       // avalon_master.address
		.readdata          (packets_to_master_0_avalon_master_readdata),      //              .readdata
		.read              (packets_to_master_0_avalon_master_read),          //              .read
		.write             (packets_to_master_0_avalon_master_write),         //              .write
		.writedata         (packets_to_master_0_avalon_master_writedata),     //              .writedata
		.waitrequest       (packets_to_master_0_avalon_master_waitrequest),   //              .waitrequest
		.readdatavalid     (packets_to_master_0_avalon_master_readdatavalid), //              .readdatavalid
		.byteenable        (packets_to_master_0_avalon_master_byteenable)     //              .byteenable
	);

	altera_avalon_packets_to_master #(
		.FAST_VER    (0),
		.FIFO_DEPTHS (2),
		.FIFO_WIDTHU (1)
	) packets_to_master_1 (
		.clk               (clk_clk),                                         //           clk.clk
		.reset_n           (~rst_controller_reset_out_reset),                 //     clk_reset.reset_n
		.out_ready         (),                                                //    out_stream.ready
		.out_valid         (),                                                //              .valid
		.out_data          (),                                                //              .data
		.out_startofpacket (),                                                //              .startofpacket
		.out_endofpacket   (),                                                //              .endofpacket
		.in_ready          (),                                                //     in_stream.ready
		.in_valid          (),                                                //              .valid
		.in_data           (),                                                //              .data
		.in_startofpacket  (),                                                //              .startofpacket
		.in_endofpacket    (),                                                //              .endofpacket
		.address           (packets_to_master_1_avalon_master_address),       // avalon_master.address
		.readdata          (packets_to_master_1_avalon_master_readdata),      //              .readdata
		.read              (packets_to_master_1_avalon_master_read),          //              .read
		.write             (packets_to_master_1_avalon_master_write),         //              .write
		.writedata         (packets_to_master_1_avalon_master_writedata),     //              .writedata
		.waitrequest       (packets_to_master_1_avalon_master_waitrequest),   //              .waitrequest
		.readdatavalid     (packets_to_master_1_avalon_master_readdatavalid), //              .readdatavalid
		.byteenable        (packets_to_master_1_avalon_master_byteenable)     //              .byteenable
	);

	proyecto3_system_pll_0 pll_0 (
		.refclk            (clk_clk),                                        //            refclk.clk
		.rst               (~reset_reset_n),                                 //             reset.reset
		.outclk_0          (),                                               //           outclk0.clk
		.outclk_1          (),                                               //           outclk1.clk
		.reconfig_to_pll   (pll_reconfig_0_reconfig_to_pll_reconfig_to_pll), //   reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll (pll_0_reconfig_from_pll_reconfig_from_pll),      // reconfig_from_pll.reconfig_from_pll
		.locked            ()                                                //       (terminated)
	);

	altera_pll_reconfig_top #(
		.device_family       ("Cyclone V"),
		.ENABLE_MIF          (0),
		.MIF_FILE_NAME       (""),
		.ENABLE_BYTEENABLE   (0),
		.BYTEENABLE_WIDTH    (4),
		.RECONFIG_ADDR_WIDTH (6),
		.RECONFIG_DATA_WIDTH (32),
		.reconf_width        (64)
	) pll_reconfig_0 (
		.mgmt_clk          (clk_clk),                                                        //          mgmt_clk.clk
		.mgmt_reset        (rst_controller_reset_out_reset),                                 //        mgmt_reset.reset
		.mgmt_waitrequest  (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_waitrequest), // mgmt_avalon_slave.waitrequest
		.mgmt_read         (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_read),        //                  .read
		.mgmt_write        (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_write),       //                  .write
		.mgmt_readdata     (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_readdata),    //                  .readdata
		.mgmt_address      (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_address),     //                  .address
		.mgmt_writedata    (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_writedata),   //                  .writedata
		.reconfig_to_pll   (pll_reconfig_0_reconfig_to_pll_reconfig_to_pll),                 //   reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll (pll_0_reconfig_from_pll_reconfig_from_pll),                      // reconfig_from_pll.reconfig_from_pll
		.mgmt_byteenable   (4'b0000)                                                         //       (terminated)
	);

	proyecto3_system_spi spi (
		.clk           (clk_clk),                                           //              clk.clk
		.reset_n       (~rst_controller_reset_out_reset),                   //            reset.reset_n
		.data_from_cpu (mm_interconnect_0_spi_spi_control_port_writedata),  // spi_control_port.writedata
		.data_to_cpu   (mm_interconnect_0_spi_spi_control_port_readdata),   //                 .readdata
		.mem_addr      (mm_interconnect_0_spi_spi_control_port_address),    //                 .address
		.read_n        (~mm_interconnect_0_spi_spi_control_port_read),      //                 .read_n
		.spi_select    (mm_interconnect_0_spi_spi_control_port_chipselect), //                 .chipselect
		.write_n       (~mm_interconnect_0_spi_spi_control_port_write),     //                 .write_n
		.irq           (),                                                  //              irq.irq
		.MISO          (spi_io_MISO),                                       //         external.export
		.MOSI          (spi_io_MOSI),                                       //                 .export
		.SCLK          (spi_io_SCLK),                                       //                 .export
		.SS_n          (spi_io_SS_n)                                        //                 .export
	);

	proyecto3_system_wdt wdt (
		.clk          (clk_clk),                             //          clk.clk
		.reset_n      (~rst_controller_reset_out_reset),     //        reset.reset_n
		.address      (mm_interconnect_0_wdt_s1_address),    //           s1.address
		.writedata    (mm_interconnect_0_wdt_s1_writedata),  //             .writedata
		.readdata     (mm_interconnect_0_wdt_s1_readdata),   //             .readdata
		.chipselect   (mm_interconnect_0_wdt_s1_chipselect), //             .chipselect
		.write_n      (~mm_interconnect_0_wdt_s1_write),     //             .write_n
		.irq          (irq_mapper_receiver0_irq),            //          irq.irq
		.resetrequest ()                                     // resetrequest.reset
	);

	proyecto3_system_mm_interconnect_0 mm_interconnect_0 (
		.clk_source_clk_clk                                        (clk_clk),                                                         //                                      clk_source_clk.clk
		.packets_to_master_0_clk_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                                  // packets_to_master_0_clk_reset_reset_bridge_in_reset.reset
		.i2c_avalon_master_address                                 (i2c_avalon_master_address),                                       //                                   i2c_avalon_master.address
		.i2c_avalon_master_waitrequest                             (i2c_avalon_master_waitrequest),                                   //                                                    .waitrequest
		.i2c_avalon_master_byteenable                              (i2c_avalon_master_byteenable),                                    //                                                    .byteenable
		.i2c_avalon_master_read                                    (i2c_avalon_master_read),                                          //                                                    .read
		.i2c_avalon_master_readdata                                (i2c_avalon_master_readdata),                                      //                                                    .readdata
		.i2c_avalon_master_readdatavalid                           (i2c_avalon_master_readdatavalid),                                 //                                                    .readdatavalid
		.i2c_avalon_master_write                                   (i2c_avalon_master_write),                                         //                                                    .write
		.i2c_avalon_master_writedata                               (i2c_avalon_master_writedata),                                     //                                                    .writedata
		.nios_ii_processor_data_master_address                     (nios_ii_processor_data_master_address),                           //                       nios_ii_processor_data_master.address
		.nios_ii_processor_data_master_waitrequest                 (nios_ii_processor_data_master_waitrequest),                       //                                                    .waitrequest
		.nios_ii_processor_data_master_byteenable                  (nios_ii_processor_data_master_byteenable),                        //                                                    .byteenable
		.nios_ii_processor_data_master_read                        (nios_ii_processor_data_master_read),                              //                                                    .read
		.nios_ii_processor_data_master_readdata                    (nios_ii_processor_data_master_readdata),                          //                                                    .readdata
		.nios_ii_processor_data_master_write                       (nios_ii_processor_data_master_write),                             //                                                    .write
		.nios_ii_processor_data_master_writedata                   (nios_ii_processor_data_master_writedata),                         //                                                    .writedata
		.nios_ii_processor_data_master_debugaccess                 (nios_ii_processor_data_master_debugaccess),                       //                                                    .debugaccess
		.nios_ii_processor_instruction_master_address              (nios_ii_processor_instruction_master_address),                    //                nios_ii_processor_instruction_master.address
		.nios_ii_processor_instruction_master_waitrequest          (nios_ii_processor_instruction_master_waitrequest),                //                                                    .waitrequest
		.nios_ii_processor_instruction_master_read                 (nios_ii_processor_instruction_master_read),                       //                                                    .read
		.nios_ii_processor_instruction_master_readdata             (nios_ii_processor_instruction_master_readdata),                   //                                                    .readdata
		.packets_to_master_0_avalon_master_address                 (packets_to_master_0_avalon_master_address),                       //                   packets_to_master_0_avalon_master.address
		.packets_to_master_0_avalon_master_waitrequest             (packets_to_master_0_avalon_master_waitrequest),                   //                                                    .waitrequest
		.packets_to_master_0_avalon_master_byteenable              (packets_to_master_0_avalon_master_byteenable),                    //                                                    .byteenable
		.packets_to_master_0_avalon_master_read                    (packets_to_master_0_avalon_master_read),                          //                                                    .read
		.packets_to_master_0_avalon_master_readdata                (packets_to_master_0_avalon_master_readdata),                      //                                                    .readdata
		.packets_to_master_0_avalon_master_readdatavalid           (packets_to_master_0_avalon_master_readdatavalid),                 //                                                    .readdatavalid
		.packets_to_master_0_avalon_master_write                   (packets_to_master_0_avalon_master_write),                         //                                                    .write
		.packets_to_master_0_avalon_master_writedata               (packets_to_master_0_avalon_master_writedata),                     //                                                    .writedata
		.packets_to_master_1_avalon_master_address                 (packets_to_master_1_avalon_master_address),                       //                   packets_to_master_1_avalon_master.address
		.packets_to_master_1_avalon_master_waitrequest             (packets_to_master_1_avalon_master_waitrequest),                   //                                                    .waitrequest
		.packets_to_master_1_avalon_master_byteenable              (packets_to_master_1_avalon_master_byteenable),                    //                                                    .byteenable
		.packets_to_master_1_avalon_master_read                    (packets_to_master_1_avalon_master_read),                          //                                                    .read
		.packets_to_master_1_avalon_master_readdata                (packets_to_master_1_avalon_master_readdata),                      //                                                    .readdata
		.packets_to_master_1_avalon_master_readdatavalid           (packets_to_master_1_avalon_master_readdatavalid),                 //                                                    .readdatavalid
		.packets_to_master_1_avalon_master_write                   (packets_to_master_1_avalon_master_write),                         //                                                    .write
		.packets_to_master_1_avalon_master_writedata               (packets_to_master_1_avalon_master_writedata),                     //                                                    .writedata
		.nios_ii_processor_debug_mem_slave_address                 (mm_interconnect_0_nios_ii_processor_debug_mem_slave_address),     //                   nios_ii_processor_debug_mem_slave.address
		.nios_ii_processor_debug_mem_slave_write                   (mm_interconnect_0_nios_ii_processor_debug_mem_slave_write),       //                                                    .write
		.nios_ii_processor_debug_mem_slave_read                    (mm_interconnect_0_nios_ii_processor_debug_mem_slave_read),        //                                                    .read
		.nios_ii_processor_debug_mem_slave_readdata                (mm_interconnect_0_nios_ii_processor_debug_mem_slave_readdata),    //                                                    .readdata
		.nios_ii_processor_debug_mem_slave_writedata               (mm_interconnect_0_nios_ii_processor_debug_mem_slave_writedata),   //                                                    .writedata
		.nios_ii_processor_debug_mem_slave_byteenable              (mm_interconnect_0_nios_ii_processor_debug_mem_slave_byteenable),  //                                                    .byteenable
		.nios_ii_processor_debug_mem_slave_waitrequest             (mm_interconnect_0_nios_ii_processor_debug_mem_slave_waitrequest), //                                                    .waitrequest
		.nios_ii_processor_debug_mem_slave_debugaccess             (mm_interconnect_0_nios_ii_processor_debug_mem_slave_debugaccess), //                                                    .debugaccess
		.on_chip_memory_s1_address                                 (mm_interconnect_0_on_chip_memory_s1_address),                     //                                   on_chip_memory_s1.address
		.on_chip_memory_s1_write                                   (mm_interconnect_0_on_chip_memory_s1_write),                       //                                                    .write
		.on_chip_memory_s1_readdata                                (mm_interconnect_0_on_chip_memory_s1_readdata),                    //                                                    .readdata
		.on_chip_memory_s1_writedata                               (mm_interconnect_0_on_chip_memory_s1_writedata),                   //                                                    .writedata
		.on_chip_memory_s1_byteenable                              (mm_interconnect_0_on_chip_memory_s1_byteenable),                  //                                                    .byteenable
		.on_chip_memory_s1_chipselect                              (mm_interconnect_0_on_chip_memory_s1_chipselect),                  //                                                    .chipselect
		.on_chip_memory_s1_clken                                   (mm_interconnect_0_on_chip_memory_s1_clken),                       //                                                    .clken
		.pll_reconfig_0_mgmt_avalon_slave_address                  (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_address),      //                    pll_reconfig_0_mgmt_avalon_slave.address
		.pll_reconfig_0_mgmt_avalon_slave_write                    (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_write),        //                                                    .write
		.pll_reconfig_0_mgmt_avalon_slave_read                     (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_read),         //                                                    .read
		.pll_reconfig_0_mgmt_avalon_slave_readdata                 (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_readdata),     //                                                    .readdata
		.pll_reconfig_0_mgmt_avalon_slave_writedata                (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_writedata),    //                                                    .writedata
		.pll_reconfig_0_mgmt_avalon_slave_waitrequest              (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_waitrequest),  //                                                    .waitrequest
		.spi_spi_control_port_address                              (mm_interconnect_0_spi_spi_control_port_address),                  //                                spi_spi_control_port.address
		.spi_spi_control_port_write                                (mm_interconnect_0_spi_spi_control_port_write),                    //                                                    .write
		.spi_spi_control_port_read                                 (mm_interconnect_0_spi_spi_control_port_read),                     //                                                    .read
		.spi_spi_control_port_readdata                             (mm_interconnect_0_spi_spi_control_port_readdata),                 //                                                    .readdata
		.spi_spi_control_port_writedata                            (mm_interconnect_0_spi_spi_control_port_writedata),                //                                                    .writedata
		.spi_spi_control_port_chipselect                           (mm_interconnect_0_spi_spi_control_port_chipselect),               //                                                    .chipselect
		.wdt_s1_address                                            (mm_interconnect_0_wdt_s1_address),                                //                                              wdt_s1.address
		.wdt_s1_write                                              (mm_interconnect_0_wdt_s1_write),                                  //                                                    .write
		.wdt_s1_readdata                                           (mm_interconnect_0_wdt_s1_readdata),                               //                                                    .readdata
		.wdt_s1_writedata                                          (mm_interconnect_0_wdt_s1_writedata),                              //                                                    .writedata
		.wdt_s1_chipselect                                         (mm_interconnect_0_wdt_s1_chipselect)                              //                                                    .chipselect
	);

	proyecto3_system_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios_ii_processor_irq_irq)       //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

	
endmodule
