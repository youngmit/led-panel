`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:43:35 09/11/2022 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input clk_in,
    output reg [3:0] mux
    );
	initial mux = 4'd0;
	
	always @(posedge clk_in)
	begin
		if (mux >= 4'd15)
		begin
			mux <= 4'b0;
		end
		else
		begin
			mux <= mux + 4'd1;
		end
	end
endmodule
