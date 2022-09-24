`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:45:56 09/11/2022 
// Design Name: 
// Module Name:    divider 
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
module clock_divider
    #(parameter DIVISOR = 20'b111111111)
	 (input clk_in,
     output reg clk_out
    );
	 
	 reg[19:0] counter = 20'd0;
	 
	 
	 always @(posedge clk_in)
	 begin
		counter <= counter + 20'd1;
		if (counter >=(DIVISOR-1))
			counter <= 20'd0;
		clk_out <= (counter<DIVISOR/2)?1'b1:1'b0;
	 end
endmodule
