`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:42 01/26/2021 
// Design Name: 
// Module Name:    Check_32bit 
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
module Check_32bit(
	input [31:0] I,
	input C,
	output [31:0] O
    );
	wire [31:0] WI, WC;
	assign
		WC[31:1] = 31'b0000000000000000000000000000000,
		WC[0] = C,
		WI = I - WC,
		O[31] = WI[31] ^ C,
		O[30] = WI[30] ^ C,
		O[29] = WI[29] ^ C,
		O[28] = WI[28] ^ C,
		O[27] = WI[27] ^ C,
		O[26] = WI[26] ^ C,
		O[25] = WI[25] ^ C,
		O[24] = WI[24] ^ C,
		O[23] = WI[23] ^ C,
		O[22] = WI[22] ^ C,
		O[21] = WI[21] ^ C,
		O[20] = WI[20] ^ C,
		O[19] = WI[19] ^ C,
		O[18] = WI[18] ^ C,
		O[17] = WI[17] ^ C,
		O[16] = WI[16] ^ C,
		O[15] = WI[15] ^ C,
		O[14] = WI[14] ^ C,
		O[13] = WI[13] ^ C,
		O[12] = WI[12] ^ C,
		O[11] = WI[11] ^ C,
		O[10] = WI[10] ^ C,
		O[9] = WI[9] ^ C,
		O[8] = WI[8] ^ C,
		O[7] = WI[7] ^ C,
		O[6] = WI[6] ^ C,
		O[5] = WI[5] ^ C,
		O[4] = WI[4] ^ C,
		O[3] = WI[3] ^ C,
		O[2] = WI[2] ^ C,
		O[1] = WI[1] ^ C,
		O[0] = WI[0] ^ C;

endmodule
