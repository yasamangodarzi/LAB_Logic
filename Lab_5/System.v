`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:55 12/23/2021 
// Design Name: 
// Module Name:    System 
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
module System(
   input [3:0]  orginal_pass,
   input        request,
	input  [3:0] din,
	input        RST ,
	input        CLK ,
	input        confirm ,
	input  [3:0] pass_data ,
	output   [3:0] qout_left,
	output   [3:0] qout_right

);
	wire en_left ;
	wire en_right ;
	wire doutt;
	FSM fsm(orginal_pass, request, din, RST , CLK , confirm , pass_data ,en_left , en_right , doutt);
	register left_reg(doutt, CLK, RST, en_left,  qout_left);
	register right_reg(doutt, CLK, RST, en_right,  qout_right);

	//register right_reg( RST ,en_right , CLK , doutt , qout_right);
	

endmodule
