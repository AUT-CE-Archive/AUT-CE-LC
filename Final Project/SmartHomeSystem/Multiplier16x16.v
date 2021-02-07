`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:39 01/25/2021 
// Design Name: 
// Module Name:    Multiplier_16bit 
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
module Multiplier16x16(
	input [15:0] I1, I2,
	output [31:0] P
    );
	wire [15:0] WI1, WI2;
	wire [31:0] W;
	wire C;
	Check_16
		C1 (.I(I1),.O(WI1));
	assign
		WI2[14:0] = I2[14:0],
		WI2[15] = 1'b0,
		W = WI1 * WI2 >> 6,
		C = I1[15] ^ I2[15];
	Check_32bit C3 (.I(W),.C(C),.O(P));
endmodule
