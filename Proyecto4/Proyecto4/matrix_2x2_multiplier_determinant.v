module matrix_2x2_multiplier_determinant #(parameter WIDTH=7) (
	input  enable,
	input  [4*WIDTH-1:0] matA,
	input  [4*WIDTH-1:0] matB,
	output [4*WIDTH-1:0] determinant
);

//C = A*B = | C00 C01 | = | A00 A01 | * | B00 B01 | = | A00*B00+A01*B10 A00*B01+A01*B11 |
//          | C10 C11 |   | A10 A11 |   | B10 B11 |   | A10*B00+A11*B10 A10*B01+A11*B11 |

wire signed [  WIDTH-1:0] a00, a01, a10, a11;
wire signed [  WIDTH-1:0] b00, b01, b10, b11;
wire signed [2*WIDTH-1:0] c00, c01, c10, c11;
wire signed [4*WIDTH-1:0] s_determinant;

// Assign the A and B matrices
assign a00 = enable ? matA[4*WIDTH-1:3*WIDTH] : 0;
assign a01 = enable ? matA[3*WIDTH-1:2*WIDTH] : 0;
assign a10 = enable ? matA[2*WIDTH-1:  WIDTH] : 0;
assign a11 = enable ? matA[  WIDTH-1:      0] : 0;

assign b00 = enable ? matB[4*WIDTH-1:3*WIDTH] : 0;
assign b01 = enable ? matB[3*WIDTH-1:2*WIDTH] : 0;
assign b10 = enable ? matB[2*WIDTH-1:  WIDTH] : 0;
assign b11 = enable ? matB[  WIDTH-1:      0] : 0;

// Multiply. A*B=C
assign c00 = a00*b00 + a01*b10;
assign c01 = a00*b01 + a01*b11;
assign c10 = a10*b00 + a11*b10;
assign c11 = a10*b01 + a11*b11;

// Calculate the determinant
assign s_determinant = c00*c11 - c01*c10;
assign determinant = s_determinant;

endmodule
