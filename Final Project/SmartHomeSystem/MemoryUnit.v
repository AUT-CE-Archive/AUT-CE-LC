`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:42 02/03/2021 
// Design Name: 
// Module Name:    MemoryUnit 
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
module MemoryUnit(

	input         arst,  // async  reset
	input         clk,   // clock  posedge
	input         wren,  // write  enabledata
	input  [34:0] din,   // input  data
	output [34:0] dout   // output data
    );
	
	// 35 D-Flip flops as Memory
	DFlop(arst, clk, din[0], wren, dout[0]);
	DFlop(arst, clk, din[1], wren, dout[1]);
	DFlop(arst, clk, din[2], wren, dout[2]);
	DFlop(arst, clk, din[3], wren, dout[3]);
	DFlop(arst, clk, din[4], wren, dout[4]);
	DFlop(arst, clk, din[5], wren, dout[5]);
	DFlop(arst, clk, din[6], wren, dout[6]);
	DFlop(arst, clk, din[7], wren, dout[7]);
	DFlop(arst, clk, din[8], wren, dout[8]);
	DFlop(arst, clk, din[9], wren, dout[9]);	
	DFlop(arst, clk, din[10], wren, dout[10]);
	DFlop(arst, clk, din[11], wren, dout[11]);
	DFlop(arst, clk, din[12], wren, dout[12]);
	DFlop(arst, clk, din[13], wren, dout[13]);
	DFlop(arst, clk, din[14], wren, dout[14]);
	DFlop(arst, clk, din[15], wren, dout[15]);
	DFlop(arst, clk, din[16], wren, dout[16]);
	DFlop(arst, clk, din[17], wren, dout[17]);
	DFlop(arst, clk, din[18], wren, dout[18]);
	DFlop(arst, clk, din[19], wren, dout[19]);
	DFlop(arst, clk, din[20], wren, dout[20]);
	DFlop(arst, clk, din[21], wren, dout[21]);
	DFlop(arst, clk, din[22], wren, dout[22]);
	DFlop(arst, clk, din[23], wren, dout[23]);
	DFlop(arst, clk, din[24], wren, dout[24]);
	DFlop(arst, clk, din[25], wren, dout[25]);
	DFlop(arst, clk, din[26], wren, dout[26]);
	DFlop(arst, clk, din[27], wren, dout[27]);
	DFlop(arst, clk, din[28], wren, dout[28]);
	DFlop(arst, clk, din[29], wren, dout[29]);
	DFlop(arst, clk, din[30], wren, dout[30]);
	DFlop(arst, clk, din[31], wren, dout[31]);
	DFlop(arst, clk, din[32], wren, dout[32]);
	DFlop(arst, clk, din[33], wren, dout[33]);
	DFlop(arst, clk, din[34], wren, dout[34]);
	
endmodule
