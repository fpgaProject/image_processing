`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:40 12/27/2020
// Design Name:   main
// Module Name:   D:/university/fpga/project/image_processing/TestSobel.v
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

module TestSobel;

	// Inputs
	reg validData;
	reg start;
	reg [1:0] size;
	reg [1:0] filter;
	reg pixel_in;
	reg clk;

	// Outputs
	wire ValidResult;
	wire [7:0] Pixel_address;
	wire [20:0] pixel_out;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.validData(validData), 
		.start(start), 
		.size(size), 
		.filter(filter), 
		.pixel_in(pixel_in), 
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
		pixel_in = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        @(negedge clk)
		  start <= 1;
		  pixel_in = 1'b1;
		  @(negedge clk)
		  pixel_in = 1'b1;
		  @(negedge clk)
		  pixel_in = 1'b0;
		  @(negedge clk)
		  pixel_in = 1'b0;
		  @(negedge clk)
		  pixel_in = 1'b1;
		  @(negedge clk)
		  pixel_in = 1'b0;
		  @(negedge clk)
		  pixel_in = 1'b1;
		  @(negedge clk)
		  pixel_in = 1'b0;
		  @(negedge clk)
		  pixel_in = 1'b0;
		  @(negedge clk)
		  pixel_in = 1'b0;
		  @(negedge clk)
		  pixel_in = 1'b1;
		  @(negedge clk)
		  pixel_in = 1'b0;
		// Add stimulus here

	end
	
	always #20 clk = ~clk;
      
endmodule

