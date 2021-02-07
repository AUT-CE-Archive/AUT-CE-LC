`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:42:07 02/04/2021
// Design Name:   LightDance
// Module Name:   C:/Users/ipchi/Desktop/SmartHomeSystem/tb_LightDance.v
// Project Name:  SmartHomeSystem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LightDance
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_LightDance;

	// Inputs
	reg arst;
	reg clk;
	reg din;
	reg load;
	reg [7:0] pdata;

	// Outputs
	wire [7:0] qdata;

	// Instantiate the Unit Under Test (UUT)
	LightDance uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.load(load), 
		.pdata(pdata), 
		.qdata(qdata)
	);
	
	initial begin
		forever
		begin
			#50 
			clk = ~clk;
		end
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		arst = 1'b0;
		din = 1'b0;
		load = 1'b1;
		pdata = 8'b10101010;

		// Wait 100 ns for global reset to finish
		#100;
		
		load = 1'b0;
		#200;
		
		load = 1'b1;
		#100;
		
		load = 1'b0;
		#200;
		
		arst = 1'b1;
		load = 1'b1;
		pdata = 8'b00111010;
		#50;
		
		arst = 1'b0;
		#50;
        
		// Add stimulus here

	end
      
endmodule
