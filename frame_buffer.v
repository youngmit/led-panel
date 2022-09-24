`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:52 09/17/2022 
// Design Name: 
// Module Name:    frame_buffer 
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
module frame_buffer(
    input [5:0] x,
    input [4:0] y1,
    input [4:0] y2,
    output [2:0] c1,
    output [2:0] c2
    );
   
	reg [2:0] image[63:0][31:0];
	
	initial begin
	   image[0][0] = 3'b100;
		image[63][0] = 3'b010;
		image[63][31] = 3'b001;
		image[0][31] = 3'b111;
	
		// H
		image[10][1] = 3'b111;
		image[10][2] = 3'b111;
		image[10][3] = 3'b111;
		image[10][4] = 3'b111;
		image[10][5] = 3'b111;
		image[10][6] = 3'b111;
		image[10][7] = 3'b111;
		image[10][8] = 3'b111;
		image[10][9] = 3'b111;
		
		image[11][5] = 3'b111;
		image[12][5] = 3'b111;
		image[13][5] = 3'b111;
		image[14][5] = 3'b111;
		image[15][5] = 3'b111;
		
		image[16][1] = 3'b111;
		image[16][2] = 3'b111;
		image[16][3] = 3'b111;
		image[16][4] = 3'b111;
		image[16][5] = 3'b111;
		image[16][6] = 3'b111;
		image[16][7] = 3'b111;
		image[16][8] = 3'b111;
		image[16][9] = 3'b111;
		
		// i
		image[19][9] = 3'b111;
		image[19][8] = 3'b111;
		image[19][7] = 3'b111;
		image[19][6] = 3'b111;
		image[19][5] = 3'b111;
		image[19][3] = 3'b111;
		
		// L
		image[24][1] = 3'b111;
		image[24][2] = 3'b111;
		image[24][3] = 3'b111;
		image[24][4] = 3'b111;
		image[24][5] = 3'b111;
		image[24][6] = 3'b111;
		image[24][7] = 3'b111;
		image[24][8] = 3'b111;
		image[24][9] = 3'b111;
		
		image[24][9] = 3'b111;
		image[25][9] = 3'b111;
		image[26][9] = 3'b111;
		image[27][9] = 3'b111;
		image[28][9] = 3'b111;
		image[29][9] = 3'b111;
		
		// o
		image[32][9] = 3'b111;
		image[32][8] = 3'b111;
		image[32][7] = 3'b111;
		image[32][6] = 3'b111;
		
		image[32][6] = 3'b111;
		image[33][6] = 3'b111;
		image[34][6] = 3'b111;
		
		image[35][6] = 3'b111;
		image[35][7] = 3'b111;
		image[35][8] = 3'b111;
		image[35][9] = 3'b111;
		
		image[34][9] = 3'b111;
		image[33][9] = 3'b111;
		image[32][9] = 3'b111;
		
		// o
		image[38][9] = 3'b111;
		image[38][8] = 3'b111;
		image[38][7] = 3'b111;
		image[38][6] = 3'b111;
		
		image[38][6] = 3'b111;
		image[39][6] = 3'b111;
		image[40][6] = 3'b111;
		
		image[41][6] = 3'b111;
		image[41][7] = 3'b111;
		image[41][8] = 3'b111;
		image[41][9] = 3'b111;
		
		image[40][9] = 3'b111;
		image[39][9] = 3'b111;
		image[38][9] = 3'b111;
		
		// b
		image[44][9] = 3'b111;
		image[44][8] = 3'b111;
		image[44][7] = 3'b111;
		image[44][6] = 3'b111;
		image[44][5] = 3'b111;
		image[44][4] = 3'b111;
		image[44][3] = 3'b111;
		
		image[45][6] = 3'b111;
		image[46][6] = 3'b111;
		image[47][6] = 3'b111;
		
		image[47][7] = 3'b111;
		image[47][8] = 3'b111;
		image[47][9] = 3'b111;
		
		image[46][9] = 3'b111;
		image[45][9] = 3'b111;
		
		// i
		image[50][9] = 3'b111;
		image[50][8] = 3'b111;
		image[50][7] = 3'b111;
		image[50][6] = 3'b111;
		image[50][5] = 3'b111;
		image[50][3] = 3'b111;
		
	end
	
	assign c1 = image[x][y1];
	assign c2 = image[x][y2];

endmodule
