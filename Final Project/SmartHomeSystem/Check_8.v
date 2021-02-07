`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:39 01/24/2021 
// Design Name: 
// Module Name:    Check_8 
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
module Check_8(
	input [7:0] I,
	output [7:0] O
    );
	wire [7:0] WI;
	wire W;
	assign
		WI[0] = I[0] ^ I[7],
		WI[1] = I[1] ^ I[7],
		WI[2] = I[2] ^ I[7],
		WI[3] = I[3] ^ I[7],
		WI[4] = I[4] ^ I[7],
		WI[5] = I[5] ^ I[7],
		WI[6] = I[6] ^ I[7],
		WI[7] = 1'b0;
	Adder_8bit A1 (.I1(WI),.I2(8'b00000000),.S(O),.carry(W),.Cin(I[0]));

endmodule
