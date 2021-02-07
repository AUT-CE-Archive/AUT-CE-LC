`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:41:42 01/26/2021 
// Design Name: 
// Module Name:    Adder_16bit 
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
module Adder_16bit(
	input Cin,
	input [15:0] I1, I2,
	output [15:0] S,
	output carry
    );
	wire w;
	Adder_8bit
		A1 (.I1(I1[7:0]),.I2(I2[7:0]),.S(S[7:0]),.carry(w),.Cin(Cin)),
		A2 (.I1(I1[15:8]),.I2(I2[15:8]),.S(S[15:8]),.carry(carry),.Cin(w));

endmodule
