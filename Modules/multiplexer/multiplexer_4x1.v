`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:51 11/15/2020 
// Design Name: 
// Module Name:    multiplexer_4x1 
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
module multiplexer_4x1(
		input [3:0] inputs,
		input [1:0] cells,
		output result
    );
	 
	 // Wires
	 wire [1:0] cells_not;
	 wire [3:0] wires;
	 
	 // Nots
	 not
		n0 (cells_not[0], cells[0]),
		n1 (cells_not[1], cells[1]);
		
	and
		n2 (wires[0], inputs[0], cells_not[0], cells_not[1]),
		n3 (wires[1], inputs[1], cells_not[0], cells[1]),
		n4 (wires[2], inputs[2], cells[0], cells_not[1]),
		n5 (wires[3], inputs[3], cells[0], cells[1]);
	
	// Result
	or n6 (result, wires[0], wires[1], wires[2], wires[3]);

endmodule
