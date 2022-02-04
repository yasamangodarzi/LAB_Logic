`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:25 11/22/2021
// Design Name:   onebit_adder
// Module Name:   C:/Users/Asus/Desktop/Lab_7/adder_subtractor/test.v
// Project Name:  adder_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: onebit_adder
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
	reg A;
	reg B;
	reg Sel;
	reg Cin;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	onebit_adder uut (
		.A(A), 
		.B(B), 
		.Sel(Sel), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
	   A = 0;
		B = 0;
		Sel = 0;
		Cin = 0;


		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 0;
		Sel = 0;
		Cin = 0;  
		// Add stimulus here
		#100;
      A = 1;
		B = 0;
		Sel = 0;
		Cin = 1;  
			
		#100;
      A = 1;
		B = 0;
		Sel = 1;
		Cin = 0; 
		
		#100;
      A = 0;
		B = 1;
		Sel = 0;
		Cin = 1;
		
		#100;
      A = 0;
		B = 1;
		Sel = 0;
		Cin = 1;
	   
		#100;
      A = 0;
		B = 1;
		Sel = 1;
		Cin = 1;
		
		#100;
      A = 1;
		B = 1;
		Sel = 0;
		Cin = 0;	
      #100;
      A = 1;
		B = 1;
		Sel = 0;
		Cin = 1;	
      #100;
      A = 1;
		B = 1;
		Sel = 1;
		Cin = 1;			
		
		#100;
      A = 0;
		B = 0;
		Sel = 0;
		Cin = 1;		
		
		#100;
      A = 0;
		B = 0;
		Sel = 1;
		Cin = 1;		

	end
      
endmodule

