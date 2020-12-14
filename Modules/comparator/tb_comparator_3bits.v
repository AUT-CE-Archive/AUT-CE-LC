`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:25 11/15/2020
// Design Name:   comparator_3bits
// Module Name:   E:/ISE/Projects/comparator/tb_comparator_3bits.v
// Project Name:  comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_3bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comparator_3bits;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg l;
	reg e;
	reg g;

	// Outputs	
	wire lt;
	wire et;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comparator_3bits uut (
		.A(A), 
		.B(B), 
		.l(l), 
		.e(e), 
		.g(g), 
		.lt(lt), 
		.et(et), 
		.gt(gt)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;		

		// Wait 100 ns for global reset to finish		
		A = 3'b000;
		B = 3'b000;
		#100;
		
		A = 3'b001;
		B = 3'b000;
		#100;
		
		A = 3'b010;
		B = 3'b010;
		#100;
		
		A = 3'b100;
		B = 3'b010;
		#100;
		
		A = 3'b100;
		B = 3'b110;
		#100;
		
		A = 3'b001;
		B = 3'b110;
		#100;
		
		A = 3'b101;
		B = 3'b100;
		#100;

	end
      
endmodule

