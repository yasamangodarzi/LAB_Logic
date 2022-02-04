`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:47:44 11/22/2021 
// Design Name: 
// Module Name:    four_bit_adder_subtractor 
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
module four_bit_adder_subtractor(
    input [3:0] A,
    input [3:0] B,
    input Sel,
    output [3:0] Sum,
    output Cout
    );
	wire carry[2:0];
	full_adder_subtractor_1bit  
	                               a1  (A[0],B[0],Sel,Sel,Sum[0],carry[0]),
									       a2  (A[1],B[1],Sel,carry[0],Sum[1],carry[1]),
									       a3  (A[2],B[2],Sel,carry[1],Sum[2],carry[2]),
									       a4  (A[3],B[3],Sel,carry[2],Sum[3],Cout);


endmodule
