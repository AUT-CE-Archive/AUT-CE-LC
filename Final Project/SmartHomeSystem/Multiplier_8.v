`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:56 01/20/2021 
// Design Name: 
// Module Name:    Multiplier_8 
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
module Multiplier_8(
	input [7:0] I1, I2,
	output [15:0] P
    );
	wire [7:0] w11, w12, w21, w22, w31, w32, w1, w2;
	wire c2, c3;
	Multiplier_4
		M1(.I1(I1[3:0]),.I2(I2[3:0]),.P(w1)),
		M2(.I1(I1[3:0]),.I2(I2[7:4]),.P(w11)),
		M3(.I1(I1[7:4]),.I2(I2[3:0]),.P(w12)),
		M4(.I1(I1[7:4]),.I2(I2[7:4]),.P(w32));
	assign
		w21[3:0] = w1[7:4],
		w21[4] = 1'b0,
		w21[5] = 1'b0,
		w21[6] = 1'b0,
		w21[7] = 1'b0;
	Adder_8bit
		A1(.I1(w11),.I2(w12),.S(w22),.carry(w31[4]),.Cin(1'b0)),
		A2(.I1(w21),.I2(w22),.S(w2),.carry(c2),.Cin(1'b0));
	assign
		w31[3:0] = w2[7:4],
		w31[5] = 1'b0,
		w31[6] = 1'b0,
		w31[7] = 1'b0;
	Adder_8bit
		A3(.I1(w31),.I2(w32),.S(P[15:8]),.carry(c3),.Cin(1'b0));
	assign
		P[7:4] = w2[3:0],
		P[3:0] = w1[3:0];

endmodule
