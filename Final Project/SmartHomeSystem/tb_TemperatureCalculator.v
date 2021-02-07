`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:54:08 01/28/2021
// Design Name:   TemperatureCalculator
// Module Name:   C:/Users/ipchi/Desktop/SmartHomeSystem/tb_TemperatureCalculator.v
// Project Name:  SmartHomeSystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TemperatureCalculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_TemperatureCalculator;

	// Inputs
	reg [31:0] tc_base;
	reg [7:0] tc_ref;
	reg [15:0] adc_data;

	// Outputs
	wire [31:0] tempc;

	// Instantiate the Unit Under Test (UUT)
	TemperatureCalculator uut (
		.tc_base(tc_base), 
		.tc_ref(tc_ref), 
		.adc_data(adc_data), 
		.tempc(tempc)
	);

	initial begin
		// Initialize Inputs
		tc_base = 0;
		tc_ref = 0;
		adc_data = 0;

		tc_base = 32'b00000000000000000000000000000001;
		tc_ref = 8'b00011000;
		adc_data = 16'b0011000010000001;

		// Wait 100 ns for global reset to finish
		#100;
		tc_base = 32'b11111111111111111111010110111000;
		tc_ref = 8'b10110101;
		adc_data = 16'b1000000000001111;

		// Wait 100 ns for global reset to finish
		#100;
		tc_base = 32'b11111111111110101010101010101010;
		adc_data = 16'b1010101010101010;
		tc_ref = 8'b11000110 ;
		#100;
		tc_base = 32'b00000000000000000000000000000001;
		tc_ref = 8'b00011000;
		adc_data = 16'b1111000010000001;

		// Wait 100 ns for global reset to finish
		#100;
		tc_base = 32'b11111111111111111111111111111111;
		tc_ref = 8'b00011000;
		adc_data = 16'b0011000010000001;
		#100;

	end
      
endmodule

