module IP_matrix_2x2_multiplier_determinant (
	input clock,
	input reset,
	input [31:0] writedata,
	output [31:0] readdata,
	input write,
	input read,
	input chipselect,
	input [1:0] in_address
);

	// Register addresses
	parameter	DATA_REG_1 = 2'b00,
					DATA_REG_2 = 2'b01,
					CONTROL_REG = 2'b10,
					OUT_REG = 2'b11;

	// Wire and regs
	wire enable_wr_data_reg_1, enable_wr_data_reg_2, enable_wr_control_reg;
	reg [31:0] readdata_mux;
	reg m0_enable;
	reg [27:0] m0_matA, m0_matB;
	wire [27:0] m0_determinant;

	// Write enable signals
	assign enable_wr_data_reg_1  = (in_address==DATA_REG_1)  ? (chipselect&write) : 0;
	assign enable_wr_data_reg_2  = (in_address==DATA_REG_2)  ? (chipselect&write) : 0;
	assign enable_wr_control_reg = (in_address==CONTROL_REG) ? (chipselect&write) : 0;

	// Write to the inputs when the enable signals are set
	always @ (posedge clock or posedge reset) begin
		if (reset) begin
			m0_enable <= 0;
			m0_matA <= 0;
			m0_matB <= 0;
		end else begin
			if (enable_wr_data_reg_1) begin
				m0_matA <= {writedata[30:24],writedata[22:16],writedata[14:8],writedata[6:0]};
			end else
			if (enable_wr_data_reg_2) begin
				m0_matB <= {writedata[30:24],writedata[22:16],writedata[14:8],writedata[6:0]};
			end else
			if (enable_wr_control_reg) begin
				m0_enable <= writedata[0];
			end
		end
	end

	// Assign the readdata depending on the register address
	always @ (in_address) begin
		case (in_address)
			OUT_REG: readdata_mux = m0_determinant[27] ? {4'hf,m0_determinant} : {4'h0,m0_determinant};
			default: readdata_mux = 0;
		endcase
	end

	assign readdata = readdata_mux;

	// Matrix module
	matrix_2x2_multiplier_determinant m0 (
		.enable(m0_enable),
		.matA(m0_matA),
		.matB(m0_matB),
		.determinant(m0_determinant)
	);

endmodule
