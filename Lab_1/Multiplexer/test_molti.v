`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:02:03 11/08/2021
// Design Name:   molti
// Module Name:   E:/erfaneh/AZ5/molti_verilog/molti/test_molti.v
// Project Name:  molti
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: molti
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_molti;

	// Inputs
	input wire s0;
	input wire s1;
	input wire w0;
	input wire w1;
	input wire w2;
	input wire w3;

	// Outputs
	output reg y;

	// Instantiate the Unit Under Test (UUT)
	molti uut (
		.s0(s0), 
		.s1(s1), 
		.w0(w0), 
		.w1(w1), 
		.w2(w2), 
		.w3(w3), 
		.y(y)
	);


		// Initialize Inputs
	always @ (w0 or w1 or w2 or w3 or s0, s1)
   begin	
   case (s0 | s1)
   2'b00 : y <= w0;
   2'b01 : y <= w1;
   2'b10 : y <= w2;
   2'b11 : y <= w3;
   endcase
	end

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      
endmodule

