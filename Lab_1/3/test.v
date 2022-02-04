`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:00:52 11/08/2021
// Design Name:   decoder4x16
// Module Name:   D:/lab_5/test.v
// Project Name:  lab_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4x16
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
	reg a;
	reg b;
	reg c;
	reg d;
	reg en;

	// Outputs
	wire [15:0] f;
	wire out;

	// Instantiate the Unit Under Test (UUT)
	decoder4x16 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.en(en), 
		.f(f), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0; b = 0; c = 0; d = 0; en = 0;
		#50 a = 0; b = 0; c = 0; d = 0; en = 1;
		#50 a = 0; b = 0; c = 0; d = 1; en = 1;
		#50 a = 0; b = 0; c = 1; d = 0; en = 1;
		#50 a = 0; b = 0; c = 1; d = 1; en = 1;
		#50 a = 0; b = 1; c = 0; d = 0; en = 1;
		#50 a = 0; b = 1; c = 0; d = 1; en = 1;
		#50 a = 0; b = 1; c = 1; d = 0; en = 1;
		#50 a = 0; b = 1; c = 1; d = 1; en = 1;
		#50 a = 1; b = 0; c = 0; d = 0; en = 1;
		#50 a = 1; b = 0; c = 0; d = 1; en = 1;
		#50 a = 1; b = 0; c = 1; d = 0; en = 1;
		#50 a = 1; b = 0; c = 1; d = 1; en = 1;
		#50 a = 1; b = 1; c = 0; d = 0; en = 1;
		#50 a = 1; b = 1; c = 0; d = 1; en = 1;
		#50 a = 1; b = 1; c = 1; d = 0; en = 1;
		#50 a = 1; b = 1; c = 1; d = 1; en = 1;
		// Wait 100 ns for global reset to finish
		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

