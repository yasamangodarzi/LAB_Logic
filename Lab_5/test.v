`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:14:55 12/23/2021
// Design Name:   System
// Module Name:   C:/Users/Asus/Desktop/Lab_10/LAB_10/test.v
// Project Name:  LAB_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: System
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
	reg [3:0] secret_pass;
	reg request;
	reg [3:0] din;
	reg RST;
	reg CLK;
	reg confirm;
	reg [3:0] pass_data;

	// Outputs
	wire [3:0] qout_left;
	wire [3:0] qout_right;

	// Instantiate the Unit Under Test (UUT)
	System uut (
		.secret_pass(secret_pass), 
		.request(request), 
		.din(din), 
		.RST(RST), 
		.CLK(CLK), 
		.confirm(confirm), 
		.pass_data(pass_data), 
		.qout_left(qout_left), 
		.qout_right(qout_right)
	);

	initial begin
		// Initialize Inputs
		secret_pass = 0;
		request = 0;
		din = 0;
		RST = 0;
		CLK = 0;
		confirm = 0;
		pass_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

