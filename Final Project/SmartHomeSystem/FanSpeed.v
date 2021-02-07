`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:17 01/28/2021 
// Design Name: 
// Module Name:    FanSpeed 
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
module FanSpeed(
	input        arst,		 // reset [asynch]  
	input        clk,			 // clock [posedge] 
	input  [7:0] speed,		 // speed [duty-cycle]  
	output reg   pwm_data    // data  [output]
    );
	 
	 // Regs
	 reg [7:0] it = 8'b00000000;
	
	always@ (posedge clk or negedge arst)
		begin
		
			if (~arst) it = 8'b00000000;
			else
				begin

					if (it < speed) pwm_data = 1'b1; else pwm_data = 1'b0;
			
					// Increment
					it = it + 1;
			
					// Reset iterator
					if (it == 8'b11111111) it = 8'b00000000;
				end
		end
		
endmodule
