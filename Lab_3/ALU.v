`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:15:22 11/30/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU (output [3:0] out, input [1:0] A,input [1:0] B, input [1:0]S );

 
	
	assign out = S[1] ? (S[0] ? A * B : (A + B) ) : (S[0] ? {2'b00,~(A & B)} : {2'b00,~A});
	
endmodule

 