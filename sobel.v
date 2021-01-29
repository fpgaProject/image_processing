`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:20 01/15/2021 
// Design Name: 
// Module Name:    sobel 
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
module sobel(
input signed [11:0] Dx_reg,
input signed [11:0] Dy_reg,
output [7:0] pixel_out
);
wire [10:0] Dx;
wire [10:0] Dy;
////////// absolute value /////////
		
		 assign Dx = Dx_reg < 0 ? -Dx_reg : Dx_reg;
		 assign Dy = Dy_reg < 0 ? -Dy_reg : Dy_reg;
	
	///// calcute autput ////////////
		 
		  assign pixel_out = Dx + Dy <= 127 ? 0 : 8'b11111111 ;
	

endmodule
