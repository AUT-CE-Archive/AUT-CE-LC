`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:00 01/23/2021 
// Design Name: 
// Module Name:    FA 
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
module FA(
	input Cin,
	input A,
	input B,
	output S,
	output Cout
    );
	assign
		S = (Cin ^ A) ^ B,
		Cout = (Cin & (A | B)) | (A & B);

endmodule
