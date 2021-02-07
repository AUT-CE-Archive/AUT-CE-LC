`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:21 01/28/2021
// Design Name:   CoolHeatSystem
// Module Name:   E:/Xilinx/Projects/SmartHomeSystem/tb_CoolHeatSystem.v
// Project Name:  SmartHomeSystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CoolHeatSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CoolHeatSystem;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;
	reg [7:0] chs_conf;

	// Outputs
	wire [3:0] chs_power;
	wire chs_mode;
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	CoolHeatSystem uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.chs_conf(chs_conf), 
		.chs_power(chs_power), 
		.chs_mode(chs_mode), 
		.pwm_data(pwm_data)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		speed = 0;
		chs_conf = 0;

		// Wait 100 ns for global reset to finish
		#10 chs_conf = 8'b00001011; speed = 8'b00000110; arst = 1'b1;
		#50 chs_conf = 8'b10011010;
		#30 chs_conf = 8'b01111101;
		#100 speed = 8'b00100101;

	end
	
	always #10 clk = ~clk;
      
endmodule

