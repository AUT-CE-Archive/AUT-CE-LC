`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:46 11/15/2020 
// Design Name: 
// Module Name:    decoder_4x2 
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
module decoder_2x4(
		input [1:0] inputs,
		input enabled,
		output [3:0] outputs
    );
	 
	 wire [1:0] inputs_not;
	 
	 // NOTs
	 not
		n0 (inputs_not[0], inputs[0]),
		n1 (inputs_not[1], inputs[1]);
	 
	 // ANDs
	 and
		D2 (outputs[0], enabled, inputs_not[0], inputs_not[1]),
		D3 (outputs[1], enabled, inputs[0], inputs_not[1]),
		D4 (outputs[2], enabled, inputs_not[0], inputs[1]),
		D5 (outputs[3], enabled, inputs[0], inputs[1]);

endmodule
