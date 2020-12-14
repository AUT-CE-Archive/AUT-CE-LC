`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:42 11/15/2020 
// Design Name: 
// Module Name:    comparator_3bits 
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
module comparator_3bits(
		input [2:0] A,
		input [2:0] B,
		
		input l, e, g,
		
		output lt, et, gt			
    );
	 
	 wire [2:0] bit_equality;
	 wire l_wire, e_wire, g_wire;
	 
	 // Compare bit by bit
	 assign
		bit_equality[0] = (A[0] && B[0]) || (~A[0] && ~B[0]),
		bit_equality[1] = (A[1] && B[1]) || (~A[1] && ~B[1]),
		bit_equality[2] = (A[2] && B[2]) || (~A[2] && ~B[2]);
		
	 // Adjust using past results
	 assign
		e_wire = (bit_equality[0] && bit_equality[1] && bit_equality[2]),
		l_wire = (l && e_wire),		
		g_wire = (g && e_wire);
	 
	 // Compute results
	 assign
		lt = (~A[2] && B[2]) || (bit_equality[2] && ~A[1] && B[1]) || (bit_equality[2] && bit_equality[1] && ~A[0] && B[0]) || l_wire,
		gt = (A[2] && ~B[2]) || (bit_equality[2] && A[1] && ~B[1]) || (bit_equality[2] && bit_equality[1] && A[0] && ~B[0]) || g_wire,
		et = (e && e_wire);	 		
	 
endmodule