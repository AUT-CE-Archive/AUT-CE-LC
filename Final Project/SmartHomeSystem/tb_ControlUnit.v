`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:56:06 02/03/2021
// Design Name:   ControlUnit
// Module Name:   D:/projects/sedrfgh/module7/tb_ControlUnit.v
// Project Name:  module7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ControlUnit;

  // Inputs
  reg arst;
  reg clk;
  reg request;
  reg confirm;
  reg [1:0] password;
  reg [1:0] syskey;
  reg [34:0] configin;

  // Outputs
  wire [34:0] configout;
  wire write_en;
  wire [2:0] dbg_state;

  // Instantiate the Unit Under Test (UUT)
  ControlUnit uut (
    .arst(arst), 
    .clk(clk), 
    .request(request), 
    .confirm(confirm), 
    .password(password), 
    .syskey(syskey), 
    .configin(configin), 
    .configout(configout), 
    .write_en(write_en), 
    .dbg_state(dbg_state)
  );
  
  initial begin
    forever
    begin
      #25
      clk = ~clk;
    end
  end

  initial begin
    // Initialize Inputs
    arst = 1'b0;
    clk = 0;
    request = 1'b1;
    confirm = 1'b0;
    password = 2'b11;
    syskey = 2'b10;
    configin = 35'b10101010101010101010101010101010101;
    #100;
    
    arst = 1'b1;
    confirm = 1'b1;
    password = 2'b11;
    #100;
    
    request = 1'b0;
    #100;
    
    request = 1'b1;
    #50;
    
    confirm = 1'b0;
    password = 2'b10;
    #50;
    
    confirm = 1'b1;
    #100;
    
    confirm = 1'b0;
    #250;
    
    confirm = 1'b1;
    #50;
    // Add stimulus here

  end
      
endmodule