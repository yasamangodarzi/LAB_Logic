`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:44 11/07/2021 
// Design Name: 
// Module Name:    encoder 
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
module encoder(
    input I3,
    input D1,
    input D2,
    input D3,
    output Q0,
    output Q1
    );
	 
assign Q1 = D3 + D2;
assign Q0 = D3 + ((~D2)&D1);

endmodule
