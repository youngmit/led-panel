`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:49:48 09/17/2022 
// Design Name: 
// Module Name:    seven_seg 
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
module seven_seg(
	 input clk,
    input [7:0] value,
    output [7:0] segments,
	 output [2:0] enable
    );

	reg [7:0] rom [0:15];
	
	initial begin
		//rom[0] = ~8'b00011111;
		rom[0] = ~8'b11111100;
		rom[1] = ~8'b01100000;
		rom[2] = ~8'b11011010;
		rom[3] = ~8'b11110010;
		rom[4] = ~8'b01100110;
		rom[5] = ~8'b10110110;
		rom[6] = ~8'b10111110;
		rom[7] = ~8'b11100000;
		rom[8] = ~8'b11111110;
		rom[9] = ~8'b11100110;
		rom[10] = ~8'b11101110; // A
		rom[11] = ~8'b00111110; // b
		rom[12] = ~8'b00011010; // c
		rom[13] = ~8'b01111010; // d
		rom[14] = ~8'b10011110; // E
		rom[15] = ~8'b10001110; // F

	end
	reg digit = 0;
	reg [7:0] segreg = 0;
	assign segments = segreg;
	assign enable = digit?2'b01:2'b10;
	
	always @(posedge clk) begin
	    if (digit) begin
	        segreg = rom[value[3:0]];
		 end
		 else begin
		     segreg = rom[value[7:4]];
		 end
		 digit = ~digit;
   end

endmodule
