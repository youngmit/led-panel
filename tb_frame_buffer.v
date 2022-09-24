`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:52:20 09/17/2022
// Design Name:   frame_buffer
// Module Name:   /home/ise/xilinx-work/led-screen/tb_frame_buffer.v
// Project Name:  led-screen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: frame_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_frame_buffer;

	// Inputs
	reg [5:0] x;
	reg [4:0] y1;
	reg [4:0] y2;

	// Outputs
	wire [2:0] c1;
	wire [2:0] c2;

	// Instantiate the Unit Under Test (UUT)
	frame_buffer uut (
		.x(x), 
		.y1(y1), 
		.y2(y2), 
		.c1(c1), 
		.c2(c2)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y1 = 0;
		y2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		x = 0;
		#1;
		x=1; y1 = 1;
		#1;
		x=2; y1=2;
		#1;


	end
      
endmodule

