`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:33:39 11/15/2020
// Design Name:   multiplexer_4x1
// Module Name:   E:/ISE/Projects/multiplexer/tb_multiplexer_4x1.v
// Project Name:  multiplexer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplexer_4x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_multiplexer_4x1;

	// Inputs
	reg [3:0] inputs;
	reg [1:0] cells;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	multiplexer_4x1 uut (
		.inputs(inputs), 
		.cells(cells), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		inputs = 0;
		cells = 0;
        
		// Add stimulus here
		cells <= 2'b00;
		
		inputs <= 4'b0000;
		# 100 ;
		
		inputs <= 4'b0001;
		# 100 ;
		
		inputs <= 4'b0010;
		cells <= 2'b01;
		# 100 ;
		
		inputs <= 4'b0011;
		# 100 ;
		
		inputs <= 4'b0100;
		# 100 ;
		
		inputs <= 4'b0101;
		cells <= 2'b11;
		# 100 ;
		
		inputs <= 4'b0110;
		# 100 ;
		
		inputs <= 4'b0111;
		# 100 ;
		
		inputs <= 4'b1000;
		# 100 ;
				
	end
      
endmodule

