`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:34:46 11/18/2020
// Design Name:   comparator_8bits
// Module Name:   E:/ISE/Projects/comparator/tb_comparatpr_8bit.v
// Project Name:  comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_8bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comparatpr_8bit;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg l;
	reg e;
	reg g;

	// Outputs
	wire lt;
	wire et;
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	comparator_8bits uut (
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
		l = 0;
		e = 0;
		g = 0;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		
		// Wait 100 ns for global reset to finish		
		A = 8'b00000000;
		B = 8'b00000000;
		#100;
		
		A = 8'b01001001;
		B = 8'b00100010;
		#100;
		
		A = 8'b01001011;
		B = 8'b10101011;
		#100;
		
		A = 8'b11001011;
		B = 8'b11001011;
		#100;
        
		// Add stimulus here

	end
      
endmodule

