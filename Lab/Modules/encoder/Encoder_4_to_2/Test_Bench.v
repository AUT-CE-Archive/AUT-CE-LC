`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:13:38 11/12/2020
// Design Name:   Encoder_4_to_2
// Module Name:   E:/ISE/Projects/AZ5/Encoder_4_to_2/Test_Bench.v
// Project Name:  Encoder_4_to_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder_4_to_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Bench;

	// Inputs
	reg I0;
	reg I1;
	reg I2;
	reg I3;

	// Outputs
	wire A;
	wire B;

	// Instantiate the Unit Under Test (UUT)
	Encoder_4_to_2 uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		I0 = 1'b1; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0;	// Result  0 0
		#100;
		
		I0 = 1'b1; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0;	// Result  0 1
		#100;
		
		I0 = 1'b1; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0;	// Result  1 0
		#100;

	end
      
endmodule

