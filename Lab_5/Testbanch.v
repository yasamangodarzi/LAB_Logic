`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:17:25 12/23/2021
// Design Name:   System
// Module Name:   C:/Users/Asus/Desktop/Lab_10/LAB_10/Testbanch.v
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

module Testbanch;

	// Inputs
	reg [3:0] orginal_pass;
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
		.orginal_pass(orginal_pass), 
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
		orginal_pass = 4'b1011;
		request = 1'b0;
		RST = 1'b0;
		
		
		#30
		//s1
		RST = 1'b1;
		request = 1'b1;

		#30
		//S3
		request = 1'b1;
		confirm = 1'b1;
		pass_data = 4'b1011;
		
		#30
		//S2
		request = 1'b1;
		confirm = 1'b1;
		din = 4'b1101;
		
		
		
	end
	initial
   begin
      CLK = 1'b0;
      repeat (30)
      #10 CLK = ~CLK;
   end
      
endmodule



