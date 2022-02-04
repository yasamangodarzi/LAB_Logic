`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:20:26 11/30/2021
// Design Name:   ALU
// Module Name:   C:/Users/Asus/Desktop/8/Alu/ALU/test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
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
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] S;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.out(out), 
		.A(A), 
		.B(B), 
		.S(S)
	);

	initial begin
	A = 2'b00;
		B = 2'b01;
		S = 2'b00;
		#100;
        
		A = 2'b00;
		B = 2'b01;
		S = 2'b01;
		#100;
		
		A = 2'b10;
		B = 2'b01;
		S = 2'b01;
		#100;
		
		A = 2'b11;
		B = 2'b01;
		S = 2'b10;
		#100;
		
		A = 2'b10;
		B = 2'b01;
		S = 2'b10;
		#100;
		
		A = 2'b10;
		B = 2'b01;
		S = 2'b11;
		#100;
		
		A = 2'b10;
		B = 2'b11;
		S = 2'b11;
		#100;
		
		A = 2'b11;
		B = 2'b11;
		S = 2'b11;
		#100;
		
		A = 2'b01;
		B = 2'b01;
		S = 2'b11;
		#100;
		
		A = 2'b11;
		B = 2'b11;
		S = 2'b00;
		#100;
	end
 
      
endmodule

