`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:49:56 01/28/2021 
// Design Name: 
// Module Name:    GasDetectorSensor 
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
module GasDetectorSensor(
	input        arst,             				// Async Reset
	input        clk,             				// Clock Posedge
	input        din,             				// Input Data
	output reg [2:0] dout = 3'b000    		   // Output Data
    );
	 
  // Regs
  reg [4:0] next_state, current_state;

  // Parameters
  parameter
    s0              = 5'b00000,
    s1              = 5'b00001,
    s10             = 5'b00010,
    s100            = 5'b00011,
    s1001           = 5'b00100,
    s10010          = 5'b00101,
    s100100         = 5'b00110,
    s1001001        = 5'b00111,
    s10010010       = 5'b01000,
    s100100100      = 5'b01001,
    s101            = 5'b01010,
    s1011           = 5'b01011,
    s10111          = 5'b01100,
    s101110         = 5'b01101,
    s1011101        = 5'b01110,
    s10111010       = 5'b01111,
    s101110101      = 5'b10000,
    s1011101010     = 5'b10001,
    s1010           = 5'b10010,
    s10101          = 5'b10011,
    s101010         = 5'b10100,
    s1010100        = 5'b10101,
    s10101001       = 5'b10110,
    s101010010      = 5'b10111,
    s1010100100     = 5'b11000,
    s10101001001    = 5'b11001,
    s101010010011   = 5'b11010;

  // FSM
  always @(posedge clk)
	begin
		case (current_state)
			s0: if(~din) next_state = s0; else next_state = s1;
			s1: if(~din) next_state = s10; else next_state = s1;
			s10: if(~din) next_state = s100; else next_state = s101;
			s100: if(~din) next_state = s0; else next_state = s1001;
			s1001: if(~din) next_state = s10010; else next_state = s1;
			s10010: if(~din) next_state = s100100; else next_state = s101;
			s100100: if(~din) next_state = s0; else next_state = s1001001;
			s1001001: if(~din) next_state = s10010010; else next_state = s1;
			s10010010: if(~din) begin next_state = s100100100; dout[2] = 1'b1; end else next_state = s101;            // 100
			s100100100: if(~din) next_state = s0; else next_state = s1001001;
			s101: if(~din) next_state = s1010; else next_state = s1011;
			s1011: if(~din) next_state = s10; else next_state = s10111;
			s10111: if(~din) next_state = s101110; else next_state = s1;
			s101110: if(~din) next_state = s100; else next_state = s1011101;
			s1011101: if(~din) next_state = s10111010; else next_state = s1011;
			s10111010: if(~din) next_state = s100; else next_state = s101110101;
			s101110101: if(~din) begin next_state = s1011101010; dout[0] = 1'b1; end else next_state = s1011;          // 001
			s1011101010: if(~din) next_state = s1010100; else next_state = s10101;			
			s1010: if(~din) next_state = s100; else next_state = s10101;
			s10101: if(~din) next_state = s101010; else next_state = s1011;
			s101010: if(~din) next_state = s1010100; else next_state = s10101;
			s1010100: if(~din) next_state = s0; else next_state = s10101001;
			s10101001: if(~din) next_state = s101010010; else next_state = s1;
			s101010010: if(~din) next_state = s1010100100; else next_state = s101;
			s1010100100: if(~din) next_state = s0; else next_state = s10101001001;
			s10101001001: if(~din) next_state = s10010010; else begin next_state = s101010010011; dout[1] = 1'b1; end    // 010
			s101010010011: if(~din) next_state = s10; else next_state = s1;
		endcase
		
		// Reset dout if detection is None
		// if (!(next_state == s100100100 || next_state == s1011101010 || next_state == s101010010011)) dout = 3'b000;
	end
	
	// Async Reset
	always@ (posedge clk or negedge arst)	
		if (~arst) current_state = s0;
		else current_state = next_state;

endmodule
