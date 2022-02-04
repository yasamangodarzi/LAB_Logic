`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:22:52 12/16/2021
// Design Name:   circut
// Module Name:   C:/Users/Asus/Desktop/lab_9/circut_no_dlaey/test.v
// Project Name:  circut_no_dlaey
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: circut
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg RST;
	reg CLK;
	reg A;
	reg B;

	// Outputs
	wire Y;
	wire Z;
	wire X;
	wire R;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	circut uut (
		.RST(RST), 
		.CLK(CLK), 
		.A(A), 
		.B(B), 
		.Y(Y), 
		.Z(Z), 
		.X(X), 
		.R(R), 
		.S(S)
	);

	initial begin
		 RST = 0;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b001;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		{CLK,A,B} = 3'b011;
		#40;
		{CLK,A,B} = 3'b101;
		#40;
		{CLK,A,B} = 3'b001;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b010;
		#40;
		{CLK,A,B} = 3'b110;
		#40;
		{CLK,A,B} = 3'b010;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b100;
		#40;
		{CLK,A,B} = 3'b000;
		#40;
		{CLK,A,B} = 3'b101;
		#40;
		{CLK,A,B} = 3'b011;
		#40;
		{CLK,A,B} = 3'b111;
		#40;
		
		$stop;
	end
      
endmodule

