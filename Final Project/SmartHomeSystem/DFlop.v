`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:07 02/02/2021 
// Design Name: 
// Module Name:    DFlop 
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
module DFlop(
	input  arst, clk , din, load, 
	output reg dout
    );
	always @ (posedge clk or posedge arst)
	begin
		if (arst)
			dout <= 0;
		else
		begin
			if (load)
				dout <= din;
			else
				dout <= dout;
		end
	end

endmodule
