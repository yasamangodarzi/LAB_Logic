`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:54 12/16/2021 
// Design Name: 
// Module Name:    circut 
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
module  circut(
	input RST ,
	input CLK ,
	input A ,
	input B ,
	output Y,
	output Z,
	output X,
	output R,
	output S);

		wire A1,A2,A3,A4;
		assign S = B & A3;
		assign A1 = A | S;
		assign A2 = ~(A1 | A4);
		
	   dff df1(RST,CLK,A1,Y,A4),
			 df2(RST,CLK,A2,X,A3);
		assign R = B & A3;
		assign Z = A4 | R;
endmodule