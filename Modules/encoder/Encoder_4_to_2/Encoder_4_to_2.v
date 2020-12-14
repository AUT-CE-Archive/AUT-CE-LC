`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:07 11/12/2020 
// Design Name: 
// Module Name:    Encoder_4_to_2 
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
module Encoder_4_to_2(I0,I1,I2,I3,A,B);
	input I0, I1, I2, I3;
	output A, B;
	or
		a0(A,I3,I2),
		a1(B,I3,I1);
endmodule
