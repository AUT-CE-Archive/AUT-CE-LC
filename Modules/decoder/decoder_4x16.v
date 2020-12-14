`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:25 11/15/2020 
// Design Name: 
// Module Name:    decoder_4x16 
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
module decoder_4x16(
		input [3:0] inputs,
		input enabled,
		output [15:0] outputs
    );
	 
	 // Wires
	 wire [3:0] wires;
	 
	 // Decoders
	 decoder_2x4
		n0 (inputs[3:2], enabled, wires[3:0]),
		n1 (inputs[1:0], wires[0], outputs[3:0]),			// Outputs 0-3
		n2 (inputs[3:2], wires[1], outputs[7:4]), 		// Outputs 4-7
		n3 (inputs[3:2], wires[2], outputs[11:8]),		// Outputs 8-11
		n4 (inputs[3:2], wires[3], outputs[15:12]);		// Outputs 12-15

endmodule
