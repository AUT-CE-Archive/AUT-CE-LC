`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:55 01/25/2021 
// Design Name: 
// Module Name:    Check_16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Check_16(
	input [15:0] I,
	output [15:0] O
    );
	wire [15:0] WI;
	wire W;
	assign
		WI[0] = I[0] ^ I[15],
		WI[1] = I[1] ^ I[15],
		WI[2] = I[2] ^ I[15],
		WI[3] = I[3] ^ I[15],
		WI[4] = I[4] ^ I[15],
		WI[5] = I[5] ^ I[15],
		WI[6] = I[6] ^ I[15],
		WI[7] = I[7] ^ I[15],
		WI[8] = I[8] ^ I[15],
		WI[9] = I[9] ^ I[15],
		WI[10] = I[10] ^ I[15],
		WI[11] = I[11] ^ I[15],
		WI[12] = I[12] ^ I[15],
		WI[13] = I[13] ^ I[15],
		WI[14] = I[14] ^ I[15],
		WI[15] = 1'b0;
	Adder_16bit A1 (.I1(WI),.I2(16'b0000000000000000),.S(O),.carry(W),.Cin(I[15]));

endmodule
