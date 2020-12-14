`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:58 11/15/2020
// Design Name:   decoder_4x16
// Module Name:   E:/ISE/Projects/decoder/tb_decoder_4x16.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_decoder_4x16;

	// Inputs
	reg [3:0] inputs;
	reg enabled;

	// Outputs
	wire [15:0] outputs;

	// Instantiate the Unit Under Test (UUT)
	decoder_4x16 uut (
		.inputs(inputs), 
		.enabled(enabled), 
		.outputs(outputs)
	);

	initial begin
		// Initialize Inputs
		inputs = 0;
		enabled = 0;

		// Add stimulus here
		inputs = 4'b0000;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b0001;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b0011;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b0100;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b0101;
		enabled = 1'b0;
		#100;

	end
      
endmodule

