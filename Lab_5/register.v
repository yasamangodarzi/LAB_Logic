`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:57 12/23/2021 
// Design Name: 
// Module Name:    register 
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
module register(input [3:0] D, input Clk,
	input reset, input load, output reg [3:0] Q);
	
	always @(posedge Clk)
		if (~reset)
		begin
			Q <= 4'b0;
		end else if (load) begin
			Q <= D;
		end
endmodule 
