`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:17 01/21/2021 
// Design Name: 
// Module Name:    canny 
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
/*p1 p2 p3 
 p4  p5 p6 
 p7  p8 p9*/
module canny(
input clk,
input [7:0] p1,
input [7:0] p2,
input [7:0] p3,
input [7:0] p4,
input [7:0] p5,
input [7:0] p6,
input [7:0] p7,
input [7:0] p8,
input [7:0] p9,
output reg [7:0] pixel_out
    );

reg [10:0] p1_ready,p2_ready,p3_ready,p4_ready,p5_ready,p6_ready,p7_ready,p8_ready,p9_ready ;
reg signed [12 : 0] Dx_reg , Dy_reg = 0;
reg [12:0] Dx , Dy ;
wire signed [15:0] phase_out;
/*1 2 1   p1 p2 p3    p1  2p2  p3     p1+2p2+p3
  2 4 2 . p4 p5 p6 =  2p4 4p5 2p6 ->  2p4+4p5+2p6 ->23 pixel -> [23:4] : p1+p3+2(p6+p4)+(p7+p9)+2(2p5+p2+p8)/16
  1 2 1   p7 p8 p9    p7  2p8  p9     p7+2p8+p9*/

always @(posedge clk) begin
// gousian filter
	/*p1_ready <= p1 + 2* p4 + p7;
	p2_ready <= p2 + 2*p5 + p8;
	p3_ready <= p3 + 2*p6 + p9;
	p4_ready <= 2*p1 + 4* p4 + 2*p7;
	p5_ready <= 2*p2 + 4*p5 + 2*p8;
	p6_ready <= 2*p3 + 4*p6 + 2*p9;
	p7_ready <= p1 + 2* p4 + p7;
	p8_ready <= p2 + 2*p5 + p8;
	p9_ready <= p3 + 2*p6 + p9;*/
	p1_ready <= p1;
	p2_ready <= p2;
	p3_ready <= p3;
	p4_ready <= p4;
	p5_ready <= p5;
	p6_ready <= p6;
	p7_ready <= p7;
	p8_ready <= p8;
	p9_ready <= p9;
	
// edge detetct
	Dx_reg <= (p7_ready - p1_ready) + 2*(p8_ready - p2_ready) + (p9_ready - p3_ready);
	Dy_reg <= (p3_ready - p1_ready) + (p6_ready - p4_ready)*2 + (p9_ready - p7_ready);
	if(Dx_reg < 0 )
		Dx <= -Dx_reg;
	else
		Dx <= Dx_reg;
		
	if(Dy_reg < 0)
		Dy <= -Dy_reg;
	else
		Dy <= Dy_reg;
		
	if(phase_out*60 <22 || phase_out*60 > 338 || (phase_out*60 > 157 && phase_out*60 < 202)) ///shomal jonub  direction = 0
		if(Dx+Dy > p4 && Dx+Dy > p6)
			pixel_out <= 8'b11111111;
		else
			pixel_out <= 8'b00000000;
			
	else if ((phase_out*60 >=22 && phase_out*60 < 67) || (phase_out*60 >=202 && phase_out*60 < 257) )/////////direction = 45
		if(Dx+Dy > p3 && Dx+Dy > p7)
			pixel_out <= 8'b11111111;
		else
			pixel_out <= 8'b00000000;
			
	else if ((phase_out*60 >=67 && phase_out*60 < 112) || (phase_out*60 >=257 && phase_out*60 < 292))/////// direction = 90
		if(Dx+Dy > p2 && Dx+Dy > p8)
			pixel_out <= 8'b11111111;
		else
			pixel_out <= 8'b00000000;
	else////////////////////////////////////////////direction = 135
		if(Dx+Dy > p1 && Dx+Dy > p9)
			pixel_out <= 8'b11111111;
		else 
			pixel_out <= 8'b00000000;
end

atan your_instance_name (
  .x_in(Dx_reg), // input [12 : 0] x_in
  .y_in(Dy_reg), // input [12 : 0] y_in
  .phase_out(phase_out), // output [15 : 0] phase_out
  .clk(clk) // input clk
);	
endmodule
