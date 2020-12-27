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
    output reg pixel_out
    );

reg counter = 0;
reg [8:0] data;
reg Get9 = 1'b0;
reg [100:0] result = 0;
wire res;

always @(posedge clk) begin
data <= {data[8:1],pixel_in};
counter <= counter + 1'b1;
if(counter == 9)
	Get9  <= 1'b1;
if(Get9 == 1'b1)
	pixel_out <= res;

end

sobel(data,res);
	
endmodule









