`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:18 02/06/2021
// Design Name:   SmartHomeSystem
// Module Name:   C:/Users/ipchi/Desktop/SmartHomeSystem/tb_SmartHomeSystem.v
// Project Name:  SmartHomeSystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SmartHomeSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_SmartHomeSystem;

	// Inputs
	reg arst;
	reg clk;
	reg request;
	reg confirm;
	reg gds_din;
	reg [1:0] password;
	reg [34:0] confdata;
	reg [31:0] tc_base;
	reg [15:0] adc_data;
	reg [7:0] speed;
	reg [3:0] tcode;
	reg dance_load;

	// Outputs
	wire [2:0] gds_dout;
	wire [31:0] tempc;
	wire [3:0] chs_power;
	wire chs_mode;
	wire pwm_data;
	wire [3:0] wshade;
	wire [3:0] lightnum;
	wire [15:0] lightstate;
	wire [7:0] dance_qdata;
	wire [2:0] dbg_state;

	// Instantiate the Unit Under Test (UUT)
	SmartHomeSystem uut (
		.arst(arst), 
		.clk(clk), 
		.request(request), 
		.confirm(confirm), 
		.gds_din(gds_din), 
		.gds_dout(gds_dout), 
		.password(password), 
		.confdata(confdata), 
		.tc_base(tc_base), 
		.adc_data(adc_data), 
		.tempc(tempc), 
		.speed(speed), 
		.chs_power(chs_power), 
		.chs_mode(chs_mode), 
		.pwm_data(pwm_data), 
		.tcode(tcode), 
		.wshade(wshade), 
		.lightnum(lightnum), 
		.lightstate(lightstate), 
		.dance_load(dance_load), 
		.dance_qdata(dance_qdata), 
		.dbg_state(dbg_state)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		request = 0;
		confirm = 0;
		gds_din = 0;
		password = 0;
		confdata = 0;
		tc_base = 0;
		adc_data = 0;
		speed = 0;
		tcode = 0;
		dance_load = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

