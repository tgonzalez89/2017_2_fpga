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

assign a00 = matA[4*WIDTH-1:3*WIDTH];
assign a01 = matA[3*WIDTH-1:2*WIDTH];
assign a10 = matA[2*WIDTH-1:  WIDTH];
assign a11 = matA[  WIDTH-1:      0];

assign b00 = matB[4*WIDTH-1:3*WIDTH];
assign b01 = matB[3*WIDTH-1:2*WIDTH];
assign b10 = matB[2*WIDTH-1:  WIDTH];
assign b11 = matB[  WIDTH-1:      0];

assign c00 = enable ? a00*b00 + a01*b10 : 0;
assign c01 = enable ? a00*b01 + a01*b11 : 0;
assign c10 = enable ? a10*b00 + a11*b10 : 0;
assign c11 = enable ? a10*b01 + a11*b11 : 0;

assign s_determinant = enable ? c00*c11 - c01*c10 : 0;
assign determinant = s_determinant;

endmodule
