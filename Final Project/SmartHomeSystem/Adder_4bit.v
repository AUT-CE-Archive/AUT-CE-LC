`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:48 01/23/2021 
// Design Name: 
// Module Name:    Adder_4bit 
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
module Adder_4bit(
	input [3:0] I1, I2,
	output [3:0] S,
	output carry
    );
	wire C1, C2, C3;
	FA
		FA1 (.A(I1[0]),.B(I2[0]),.Cin(1'b0),.S(S[0]),.Cout(C1)),
		FA2 (.A(I1[1]),.B(I2[1]),.Cin(C1),.S(S[1]),.Cout(C2)),
		FA3 (.A(I1[2]),.B(I2[2]),.Cin(C2),.S(S[2]),.Cout(C3)),
		FA4 (.A(I1[3]),.B(I2[3]),.Cin(C3),.S(S[3]),.Cout(carry));
endmodule
