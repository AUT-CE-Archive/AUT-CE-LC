`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:24:20 02/02/2021 
// Design Name: 
// Module Name:    LightDance 
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
module LightDance (
	input arst, clk, din, load,
	input [7:0] pdata,
	output [7:0] qdata
	 );
	wire [7:0] q, p;
	assign
		p[7] = (pdata[7] & load) |((din ^ q[0]) & ~load),
		p[6] = (pdata[6] & load) |(q[7] & ~load),
		p[5] = (pdata[5] & load) |((q[6] ^ q[0]) & ~load),
		p[4] = (pdata[4] & load) |((q[5] ^ q[0]) & ~load),
		p[3] = (pdata[3] & load) |(q[4] & ~load),
		p[2] = (pdata[2] & load) |(q[0] & ~load),
		p[1] = (pdata[1] & load) |((q[2] ^ q[0]) & ~load),
		p[0] = (pdata[0] & load) |((q[1] ^ q[0]) & ~load);
	DFlop
		D7 (.arst(arst),.clk(clk),.din(p[7]),.load(1'b1),.dout(q[7])),
		D6 (.arst(arst),.clk(clk),.din(p[6]),.load(1'b1),.dout(q[6])),
		D5 (.arst(arst),.clk(clk),.din(p[5]),.load(1'b1),.dout(q[5])),
		D4 (.arst(arst),.clk(clk),.din(p[4]),.load(1'b1),.dout(q[4])),
		D3 (.arst(arst),.clk(clk),.din(p[3]),.load(1'b1),.dout(q[3])),
		D2 (.arst(arst),.clk(clk),.din(p[2]),.load(1'b1),.dout(q[2])),
		D1 (.arst(arst),.clk(clk),.din(p[1]),.load(1'b1),.dout(q[1])),
		D0 (.arst(arst),.clk(clk),.din(p[0]),.load(1'b1),.dout(q[0]));
	assign qdata = q;
	 
endmodule
