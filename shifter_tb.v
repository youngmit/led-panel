`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:05:56 09/15/2022
// Design Name:   led_shifter
// Module Name:   /home/ise/xilinx-work/led-screen/shifter_tb.v
// Project Name:  led-screen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shifter_tb;

	// Inputs
	reg clk;

	// Outputs
	wire led_clk;
	wire led_latch;
	wire led_oe;
	wire [3:0] dmux;
	wire [5:0] x;
	// Instantiate the Unit Under Test (UUT)
	led_shifter uut (
		.clk(clk), 
		.led_clk(led_clk), 
		.led_latch(led_latch), 
		.led_oe(led_oe), 
		.dmux(dmux), 
		.x(x)
	);
	integer i;

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      

		// Add stimulus here
		for (i=0; i<13000; i=i+1) begin
			clk = ~clk;
			#1;
			clk = ~clk;
			#1;
		end

	end
      
endmodule

