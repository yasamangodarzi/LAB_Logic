`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:14 11/08/2021
// Design Name:   encoder
// Module Name:   E:/erfaneh/AZ5/encoder_verilog/encoder/Encoder_test.v
// Project Name:  encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Encoder_test;

	// Inputs
	reg I3;
	reg D1;
	reg D2;
	reg D3;

	// Outputs
	wire Q0;
	wire Q1;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.I3(I3), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.Q0(Q0), 
		.Q1(Q1)
	);

	initial begin
		// Initialize Inputs
		I3 = 0; D1 = 0; D2 = 0; D3 = 0;
		#50
		I3 = 0; D1 = 0; D2 = 0; D3 = 0;
		#50
		I3 = 0; D1 = 0; D2 = 0; D3 = 1;
		#50
		I3 = 0; D1 = 0; D2 = 1; D3 = 0;
		#50
		I3 = 0; D1 = 0; D2 = 1; D3 = 1;
		#50
		I3 = 0; D1 = 1; D2 = 0; D3 = 0;
		#50
		I3 = 0; D1 = 1; D2 = 0; D3 = 1;
		#50
		I3 = 0; D1 = 1; D2 = 1; D3 = 0;
		#50
		I3 = 0; D1 = 1; D2 = 1; D3 = 1;
		#50
		I3 = 1; D1 = 0; D2 = 0; D3 = 0;
		#50
		I3 = 1; D1 = 0; D2 = 0; D3 = 1;
		#50
		I3 = 1; D1 = 0; D2 = 1; D3 = 0;
		#50
		I3 = 1; D1 = 0; D2 = 1; D3 = 1;
		#50
		I3 = 1; D1 = 1; D2 = 0; D3 = 0;
		#50
		I3 = 1; D1 = 1; D2 = 0; D3 = 1;
		#50
		I3 = 1; D1 = 1; D2 = 1; D3 = 0;
		#50
		I3 = 1; D1 = 1; D2 = 1; D3 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

