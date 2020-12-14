`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:09 11/15/2020
// Design Name:   decoder_2x4
// Module Name:   E:/ISE/Projects/decoder/tb_decoder_2x4.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_2x4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_decoder_2x4;

	// Inputs
	reg [1:0] inputs;
	reg enabled;

	// Outputs
	wire [3:0] outputs;

	// Instantiate the Unit Under Test (UUT)
	decoder_2x4 uut (
		.inputs(inputs), 
		.enabled(enabled), 
		.outputs(outputs)
	);

	initial begin
		// Initialize Inputs
		inputs = 0;
		enabled = 0;

		// Add stimulus here
		inputs = 4'b00;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b01;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b10;
		enabled = 1'b1;
		#100;
		
		inputs = 4'b11;
		enabled = 1'b0;
		#100;

	end
      
endmodule

