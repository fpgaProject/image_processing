`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:15 01/09/2021
// Design Name:   main
// Module Name:   D:/university/fpga/project/image_processing/initTest.v
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

module initTest;

	// Inputs
	reg validData;
	reg start;
	reg [1:0] size;
	reg [1:0] filter;
	reg [23:0] pixel_in;
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
        
		// Add stimulus here
		@(negedge clk)
			start <= 1'b1;
			pixel_in <= {200,100,20};
		@(negedge clk)
			pixel_in <= {120,10,53};
		@(negedge clk)
			pixel_in <= {210,82,20};
		@(negedge clk)
			pixel_in <= {10,52,20};
		@(negedge clk)
			pixel_in <= {20,82,15};



	end
	always #20 clk <= ~clk;
      
endmodule

