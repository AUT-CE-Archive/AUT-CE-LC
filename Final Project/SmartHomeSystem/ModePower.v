`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:11 01/28/2021 
// Design Name: 
// Module Name:    ModePower 
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
module ModePower(
  input   [7:0] chs_conf,   // degree [temprature] 
  output  [3:0] chs_power,  // power  [cooler / heater] 
  output  chs_mode        // model  [heat = 1 / cool = 0]
    );
  
  wire [3:0] chs_sum;
  
  assign chs_sum = chs_conf[0] + chs_conf[1] + chs_conf[2] + chs_conf[3] + chs_conf[4] + chs_conf[5] + chs_conf[6] + chs_conf[7];
  
  // Count numebr of one's
  assign chs_power = chs_sum;

  // Determine Odd/Even
  assign chs_mode = chs_sum[0];
  
endmodule