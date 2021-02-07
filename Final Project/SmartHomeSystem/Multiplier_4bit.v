`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:52 01/23/2021 
// Design Name: 
// Module Name:    Muliplier_4 
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
module Multiplier_4(
	input [3:0] I1, I2,
	output [7:0] P
    );
	wire [15:0] w;
	wire [9:0] w1;
	assign
		P[0] = I1[0] & I2[0],
		w[15] = I1[3] & I2[3],
		w[14] = I1[3] & I2[2],
		w[13] = I1[3] & I2[1],
		w[12] = I1[3] & I2[0],
		w[11] = I1[2] & I2[3],
		w[10] = I1[2] & I2[2],
		w[9] = I1[2] & I2[1],
		w[8] = I1[2] & I2[0],
		w[7] = I1[1] & I2[3],
		w[6] = I1[1] & I2[2],
		w[5] = I1[1] & I2[1],
		w[4] = I1[1] & I2[0],
		w[3] = 1'b0,
		w[2] = I1[0] & I2[3],
		w[1] = I1[0] & I2[2],
		w[0] = I1[0] & I2[1];
	Adder_4bit
		A1 (.I1(w[3:0]),.I2(w[7:4]),.S(w1[3:0]),.carry(w1[4])),
		A2 (.I1(w1[4:1]),.I2(w[11:8]),.S(w1[8:5]),.carry(w1[9])),
		A3 (.I1(w1[9:6]),.I2(w[15:12]),.S(P[6:3]),.carry(P[7]));
	assign
		P[1] = w1[0],
		P[2] = w1[5];

endmodule
