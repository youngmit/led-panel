`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:58:39 09/17/2022
// Design Name:   seven_seg
// Module Name:   /home/ise/xilinx-work/led-screen/seven_seg_tb.v
// Project Name:  led-screen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_seg_tb;

	// Inputs
	reg clk = 0;
	reg [7:0] value;

	// Outputs
	wire [7:0] segments;
	wire [1:0] enable;

	// Instantiate the Unit Under Test (UUT)
	seven_seg uut (
	   .clk(clk),
		.value(value), 
		.segments(segments),
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		value = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		value = 8'd135;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;

	end
      
endmodule

