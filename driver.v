`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:48 09/11/2022 
// Design Name: 
// Module Name:    driver 
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
module driver(
	 input CLK_100MHz,
    input [5:0] Switch,
	 input [7:0] DPSwitch,
    output [7:0] LED,
	 output [3:0] DMUX,
	 output [2:0] SevenSegmentEnable,
	 output [7:0] SevenSegment,
	 output R1,
	 output R2,
	 output G1,
	 output G2,
	 output B1,
	 output B2,
	 output LED_CLK,
	 output LED_LATCH,
	 output LED_OE
    );
	 
	wire clk_slow;
	wire [5:0] x;
	wire [3:0] y;

	wire [2:0] color1;
	wire [2:0] color2;
	
	assign SevenSegmentEnable[2] = 1;
	
	
	
	seven_seg digit1(.clk(clk_slow), .value({x[3:0],DMUX}), .segments(SevenSegment), .enable(SevenSegmentEnable[1:0]));
	
	
	frame_buffer frame(.x(x), .y1({0,y}), .y2({1,y}), .c1(color1), .c2(color2));
	
	assign R1 = color1[2];
	assign G1 = color1[1];
	assign B1 = color1[0];
	
	assign R2 = color2[2];
	assign G2 = color2[1];
	assign B2 = color2[0];
	
	
	 
	clock_divider clkdiv(.clk_in(CLK_100MHz), .clk_out(clk_slow));
	inverter i1(Switch[3], LED[7]);

	assign LED[6:0] = 7'b1010101;

	
	led_shifter shifter(.clk(clk_slow), .led_clk(LED_CLK), .led_latch(LED_LATCH), .led_oe(LED_OE), .dmux(DMUX), .y(y), .x(x));
	

endmodule
