`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:22:24 01/10/2021
// Design Name:   main
// Module Name:   D:/university/fpga/project/image_processing/testSecond.v
// Project Name:  image-processing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testSecond;

	// Inputs
	reg validData;
	reg start;
	reg [7:0] size;
	reg [7:0] filter;
	reg [7:0] pixel_in1;
	reg [7:0] pixel_in2;
	reg [7:0] pixel_in3;
	reg clk;

	// Outputs
	wire ValidResult;
	wire [7:0] Pixel_address;
	wire [7:0] pixel_out;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.validData(validData), 
		.start(start), 
		.size(size), 
		.filter(filter), 
		.pixel_in1(pixel_in1), 
		.pixel_in2(pixel_in2), 
		.pixel_in3(pixel_in3), 
		.clk(clk), 
		.ValidResult(ValidResult), 
		.Pixel_address(Pixel_address), 
		.pixel_out(pixel_out)
	);

	initial begin
		// Initialize Inputs
		validData = 0;
		start = 0;
		size = 0;
		filter = 0;
		pixel_in1 = 0;
		pixel_in2 = 0;
		pixel_in3 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		@(negedge clk) begin
			start <= 1'b1;
			pixel_in1 = 147;
			pixel_in2 = 147;
			pixel_in3 = 147;
       end
		 @(negedge clk) begin
			pixel_in1 = 149;
			pixel_in2 = 150;
			pixel_in3 = 149;
       end
		 @(negedge clk) begin
			pixel_in1 = 19;
			pixel_in2 = 41;
			pixel_in3 = 52;
       end
		// Add stimulus here

	end
	
	always #1 clk<= ~clk;
      
endmodule

