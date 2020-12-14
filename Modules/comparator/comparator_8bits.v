`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:46 11/15/2020 
// Design Name: 
// Module Name:    comparator_8bits 
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
module comparator_8bits(
		input [7:0] A,
		input [7:0] B,
		
		input l, e, g,
		
		output lt, et, gt
    );
	 
	 wire [2:0] last_2_bits_A;
	 wire [2:0] last_2_bits_B;
	 wire [1:0] e_wire;
	 wire [1:0] l_wire;
	 wire [1:0] g_wire;
	 
	 // Last two bits
	 assign last_2_bits_A = {1'b0, A[7], A[6]};
	 assign last_2_bits_B = {1'b0, B[7], B[6]};
	 
	 comparator_3bits
		c1 (A[2:0], B[2:0], l, e, g, l_wire[0], e_wire[0], g_wire[0]),										// A[2:0], B[2:0], l, e, g, lt[0], et[0], gt[0]
		c2 (A[5:3], B[5:3], l_wire[0], e_wire[0], g_wire[0], l_wire[1], e_wire[1], g_wire[1]),		// A[5:3], B[5:3], lt[0], et[0], gt[0], lt[1], et[1], gt[1]
		c3 (last_2_bits_A, last_2_bits_B, l_wire[1], e_wire[1], g_wire[1], lt, et, gt);				// A_new[8:6], B_new[8:6], lt[1], et[1], gt[1], lt, et, gt

endmodule
