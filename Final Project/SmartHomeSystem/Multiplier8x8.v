`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:18 01/24/2021 
// Design Name: 
// Module Name:    Multiplier_8bit 
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
module Multiplier8x8(
	input [7:0] I1, I2,
	output [15:0] P
    );
	wire [7:0] WI1, WI2;
	wire [15:0] WP, WO, W;
	Check_8
		C1 (.I(I1),.O(WI1)),
		C2 (.I(I2),.O(WI2));
	Multiplier_8 M1 (.I1(WI1),.I2(WI2),.P(WO));
	assign
		W[15:1] = 14'b00000000000000,
		W[0] = I1[7] ^ I2[7],
		WP = WO - W,
		P[15] = W,
		P[14] = 1'b0 ^ W[0],
		P[0] = WP[0] ^ W[0],
		P[1] = WP[1] ^ W[0],
		P[2] = WP[2] ^ W[0],
		P[3] = WP[3] ^ W[0],
		P[4] = WP[4] ^ W[0],
		P[5] = WP[5] ^ W[0],
		P[6] = WP[6] ^ W[0],
		P[7] = WP[7] ^ W[0],
		P[8] = WP[8] ^ W[0],
		P[9] = WP[9] ^ W[0],
		P[10] = WP[10] ^ W[0],
		P[11] = WP[11] ^ W[0],
		P[12] = WP[12] ^ W[0],
		P[13] = WP[13] ^ W[0];
endmodule
