`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:28 12/16/2021 
// Design Name: 
// Module Name:    dff 
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
`timescale 1 ns/1 ns

module dff (rst,CLK,D,Q,QP);

	input CLK,D,rst;
	output Q , QP;
	reg Q , QP;
	always @(posedge rst or negedge CLK)
	//this flip flop is negative edge working(falling edge)
			begin
				if (rst)
					begin
						Q <= 1'b0;
						QP <= 1'b1;
					end
				else
					begin
						Q <= D;
						QP <= ~D;
					end
			end

endmodule

