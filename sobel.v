`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:09 12/27/2020 
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
    input [8:0] Pixels,
    output  PixelFilter
    );
wire [4:0] Dx;
wire [4:0] Dy;

assign Dx = (Pixels[0] + !Pixels[6]) + {Pixels[1] + !Pixels[7] , 0} + (Pixels[2]+ !Pixels[8]);
assign Dy = (Pixels[8] + !Pixels[6]) + {Pixels[5] + !Pixels[3] , 0} + (Pixels[2]+ !Pixels[0]);

assign PixelFilter = Dx^2 + Dy^2 < 1 ? 1'b0 : 1'b1;


endmodule
