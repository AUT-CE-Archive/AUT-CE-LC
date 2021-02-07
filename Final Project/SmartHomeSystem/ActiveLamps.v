`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:23 01/28/2021 
// Design Name: 
// Module Name:    ActiveLamps 
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
module ActiveLamps(
	input  [3:0] tcode, ulight, lenght,
	output reg [3:0] active_lights
    );
	always @ (tcode)
	begin
		case (tcode)
			4'b0000 : begin
				active_lights = 4'b0000;
			end
			4'b0001 : begin
				active_lights = 4'b0000;
			end
			4'b0010 : begin
				active_lights = 4'b0000;
			end
			4'b0100 : begin
				active_lights = lenght >> 2;
			end
			4'b1000 : begin
				active_lights = ulight;
			end
		endcase		
	end

endmodule
