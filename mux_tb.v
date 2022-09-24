`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:24:19 09/15/2022
// Design Name:   mux
// Module Name:   /home/ise/xilinx-work/led-screen/mux_tb.v
// Project Name:  led-screen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg clk_in;

	// Outputs
	wire [3:0] mux;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.clk_in(clk_in), 
		.mux(mux)
	);

	integer i;
	initial begin
		// Initialize Inputs
		clk_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i=0; i<40; i=i+1) begin
			clk_in = ~clk_in;
			#1;
		end

	end
      
endmodule

