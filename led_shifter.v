`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:22:15 09/11/2022 
// Design Name: 
// Module Name:    color_data 
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
module led_shifter(
    input clk,
	 output wire led_clk,
	 output reg led_latch,
	 output reg led_oe,
	 output reg [3:0] dmux,
	 output reg [3:0] y,
	 output reg [5:0] x
    );
	 
	 assign led_clk = ~clk & ~led_latch & ~led_oe;
	 
	 parameter WIDTH = 8'd64;
	 
	 reg[7:0] counter = 8'd0;
	 initial dmux = 4'b1111;
	 initial y = 4'b0000;
	 initial x = 5'd0;
	 
	 always @(posedge clk) begin
		if (counter < WIDTH) begin
		   x = counter;
			led_latch = 0;
			led_oe = 0;
		end
		else if (counter == WIDTH) begin
		   led_latch = 1;
		   led_oe = 0;
			x = 0;
		end
		else if (counter == WIDTH+1) begin
			led_latch = 0;
		   led_oe = 1;
			x = 0;
		end
		else begin
		   led_latch = 0;
			led_oe = 0;
		   counter = 8'd0;
			x = 0;
		   dmux = dmux + 4'd1;
			y = y + 4'd1;
		end
		counter = counter + 8'd1;
	 end


endmodule
