`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:57 01/27/2021 
// Design Name: 
// Module Name:    Adder_subtractor 
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
module AdderSubtractor32x32(
	input [31:0] I1, I2,
	input Sel, 
	output [31:0] S
	 );
	assign S = I1 + I2;

endmodule
