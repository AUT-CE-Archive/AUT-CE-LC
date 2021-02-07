`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:50:30 01/28/2021
// Design Name:   GasDetectorSensor
// Module Name:   E:/Xilinx/Projects/SmartHomeSystem/tb_GasDetectorSensor.v
// Project Name:  SmartHomeSystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GasDetectorSensor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_GasDetectorSensor;

	// Inputs
	reg arst;
	reg clk;
	reg din;

	// Outputs
	wire [2:0] dout;
	// wire [4:0] current_state, next_state;

	// Instantiate the Unit Under Test (UUT)
	GasDetectorSensor uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.dout(dout)
		// .current_state(current_state),
		// .next_state(next_state)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		din = 0;
		
		// Reset
		#10 arst = 1;
		
		/*
		// Gas 1
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;		
		*/
				
		/*
		// Gas 2
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		*/
		
		/*
		// Gas 3
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		*/
		
		/*
		// Random
		#20 din = 1;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		#20 din = 0;
		#20 din = 0;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 0;
		#20 din = 1;
		#20 din = 1;
		*/		
	end
	
	always #10 clk = ~clk;
      
endmodule

