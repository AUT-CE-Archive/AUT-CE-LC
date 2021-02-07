`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:50 01/28/2021
// Design Name:   FanSpeed
// Module Name:   E:/Xilinx/Projects/SmartHomeSystem/tb_FanSpeed.v
// Project Name:  SmartHomeSystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FanSpeed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_FanSpeed;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;

	// Outputs
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	FanSpeed uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.pwm_data(pwm_data)
	);

	initial begin
  arst = 0;
  clk = 0;
  
  // Initialize Inputs
  #10 speed = 8'b10001001; arst = 1;

 end
 
 always #10 clk = ~clk;
      
endmodule