`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:50:37 11/08/2021
// Design Name:   decoder
// Module Name:   E:/erfaneh/AZ5/decoder_verilog/decoder/decoder_test.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_test;

	// Inputs
	reg I0;
	reg I1;
	reg EN;

	// Outputs
	wire D0;
	wire D1;
	wire D2;
	wire D3;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.I0(I0), 
		.I1(I1), 
		.EN(EN), 
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3)
	);

	initial begin
		// Initialize Inputs
		{I0, I1, EN} = 3'b000;
		#100;
		
		{I0, I1, EN} = 3'b010;
		#100;
		
		{I0, I1, EN} = 3'b100;
		#100;
		
		{I0, I1, EN} = 3'b110;
		#100;
		
		{I0, I1, EN} = 3'b001;
		#100;
		
		{I0, I1, EN} = 3'b011;
		#100;
		
		{I0, I1, EN} = 3'b101;
		#100;
		
		{I0, I1, EN} = 3'b111;
		#100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

