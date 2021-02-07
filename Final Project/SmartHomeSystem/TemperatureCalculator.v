`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:41 01/20/2021 
// Design Name: 
// Module Name:    temperature_sensor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module TemperatureCalculator(
	input [31:0] tc_base,
	input [7:0] tc_ref,
	input [15:0] adc_data,
	output [31:0] tempc
    );
	 
	wire [15:0] ref1 ;
	wire [31:0] ref1data ;
	
	Multiplier8x8 M1(.I1(tc_ref),.I2(tc_ref),.P(ref1));
	Multiplier16x16 M2(.I1(ref1),.I2(adc_data),.P(ref1data));
	AdderSubtractor32x32 AS(.I1(tc_base),.I2(ref1data),.Sel(tc_base[15]),.S(tempc));

endmodule
