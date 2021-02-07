`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:56 01/24/2021 
// Design Name: 
// Module Name:    Adder_8bit 
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
module Adder_8bit(
	input [7:0] I1, I2,
	input Cin,
	output [7:0] S,
	output carry
    );
	wire [6:0] c;
	FA
		FA1 (.A(I1[0]),.B(I2[0]),.Cin(Cin),.S(S[0]),.Cout(c[0])),
		FA2 (.A(I1[1]),.B(I2[1]),.Cin(c[0]),.S(S[1]),.Cout(c[1])),
		FA3 (.A(I1[2]),.B(I2[2]),.Cin(c[1]),.S(S[2]),.Cout(c[2])),
		FA4 (.A(I1[3]),.B(I2[3]),.Cin(c[2]),.S(S[3]),.Cout(c[3])),
		FA5 (.A(I1[4]),.B(I2[4]),.Cin(c[3]),.S(S[4]),.Cout(c[4])),
		FA6 (.A(I1[5]),.B(I2[5]),.Cin(c[4]),.S(S[5]),.Cout(c[5])),
		FA7 (.A(I1[6]),.B(I2[6]),.Cin(c[5]),.S(S[6]),.Cout(c[6])),
		FA8 (.A(I1[7]),.B(I2[7]),.Cin(c[6]),.S(S[7]),.Cout(carry));

endmodule
