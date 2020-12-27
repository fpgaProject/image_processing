`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:55 12/27/2020 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(
    input validData,
    input start,
    input [1:0] size,
    input [1:0] filter,
    input pixel_in,
    input clk,
    output ValidResult,
    output [7:0] Pixel_address,
    output reg [20:0] pixel_out = 0
    );

reg [20:0] counter = 0;
reg [8:0] data = 0;
reg Get9 = 1'b0;
reg [100:0] result = 0;
reg [20:0] allPixels = 0;
wire res;

always @(posedge clk) begin
if(start == 1'b1) begin
	data[8:0] <= {pixel_in , data[8:1]};
	counter <= counter + 1'b1;
end
if(counter == 8)
	Get9  <= 1'b1;
if(Get9 == 1'b1) begin
	pixel_out <= {pixel_out[19:0] , res};
end

end

 sobel so (data,res);
	
endmodule









