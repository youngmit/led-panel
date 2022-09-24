`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:53:35 09/17/2022
// Design Name:   driver
// Module Name:   /home/ise/xilinx-work/led-screen/driver_tb.v
// Project Name:  led-screen
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: driver
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module driver_tb;

	// Inputs
	reg CLK_100MHz;
	reg [5:0] Switch;

	// Outputs
	wire [7:0] LED;
	wire [3:0] DMUX;
	wire R1;
	wire R2;
	wire G1;
	wire G2;
	wire B1;
	wire B2;
	wire LED_CLK;
	wire LED_LATCH;
	wire LED_OE;

	// Instantiate the Unit Under Test (UUT)
	driver uut (
		.CLK_100MHz(CLK_100MHz), 
		.Switch(Switch), 
		.LED(LED), 
		.DMUX(DMUX), 
		.R1(R1), 
		.R2(R2), 
		.G1(G1), 
		.G2(G2), 
		.B1(B1), 
		.B2(B2), 
		.LED_CLK(LED_CLK), 
		.LED_LATCH(LED_LATCH), 
		.LED_OE(LED_OE)
	);

	integer i;
	initial begin
		// Initialize Inputs
		CLK_100MHz = 0;
		Switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i=0; i<13000; i=i+1) begin
			CLK_100MHz = ~CLK_100MHz;
			#1;
			CLK_100MHz = ~CLK_100MHz;
			#1;
		end

	end
      
endmodule

