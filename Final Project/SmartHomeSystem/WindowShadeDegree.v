`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:52 01/28/2021 
// Design Name: 
// Module Name:    WindowShadeDegree 
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
module WindowShadeDegree(
	input  [3:0] tcode, ulight,
	output reg [3:0] wshade
    );
	always @ (tcode)
	begin
		case (tcode)
			4'b0000 : begin
				wshade = 4'b0000;
			end
			4'b0001 : begin
				wshade = 4'b1111;
			end
			4'b0010 : begin
				wshade = 4'b1100;
			end
			4'b0100 : begin
				wshade = ulight;
			end
			4'b1000 : begin
				wshade = 4'b0000;
			end
		endcase
	end

endmodule
