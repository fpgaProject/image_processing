`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:22 01/15/2021 
// Design Name: 
// Module Name:    median 
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
module median(
input [7:0] p1,
input [7:0] p2,
input [7:0] p3,
input [7:0] p4,
input [7:0] p5,
input [7:0] p6,
input [7:0] p7,
input [7:0] p8,
input [7:0] p9,
input clk,
output reg [7:0] pixel_out
    );
reg [23:0] orderdRow1;
reg [23:0] orderdRow2;
reg [23:0] orderdRow3;
reg [23:0] orderdColumn;
////////////// sort row /////////////////
	/*  /////////////row 1///////////////
	  assign orderdRow1 = (p4 <= p1 && p4 <= p7) ? 
	  (p1 < p7 ? {p7 , p1 , p4} : {p1 , p7 , p4}) :
	  (p1 <= p4 && p1 <= p7) ? ((p4 < p7 ) ? {p1 , p4 , p7} : {p4 , p7 , p1}) :
	  ((p1 < p4) ? {p4 , p1 , p7} : {p1 , p4 , p7});
		
		/////////////row 2///////////////
		 assign orderdRow2 = (p5 <= p2 && p5 <= p8) ? 
		  (p2 < p8 ? {p8 , p2 , p5} : {p2 , p8 , p5}) :
		  (p2 <= p5 && p2 <= p8) ? ((p5 < p8) ? {p8 , p5 , p2} : {p5 , p8 , p2}) :
		  ((p2 < p5) ? {p5 , p2 , p8} : {p2 , p5 , p8});
		  
		
		/////////////row 3///////////////
		 assign orderdRow3 = (p6 <= p3 && p6 <= p9) ? 
		  (p3 < p9 ? {p9 , p3 , p6} : {p9 , p6 , p3}) :
		  (p9 <= p3 && p9 <= p6) ? ((p3 < p6) ? {p6 , p3 , p9} : {p3 , p6 , p9}) :
		  ((p6 < p9) ? {p9 , p6 , p3} : {p6 , p9 , p3});
		  
		
		
		////////////// sort culumn /////////////////
		/////////////culumn 2///////////////
		assign orderdColumn = (orderdRow1[15:8] <= orderdRow2[15:8] && orderdRow1[15:8] <= orderdRow3[15:8]) ? 
		  (orderdRow2[15:8] < orderdRow3[15:8] ? {orderdRow3[15:8] , orderdRow2[15:8] , orderdRow1[15:8] } : {orderdRow2[15:8], orderdRow3[15:8] , orderdRow1[15:8]}) :
		  (orderdRow2[15:8] <= orderdRow1[15:8] && orderdRow2[15:8] <= orderdRow3[15:8]) ? 
		  ((orderdRow1[15:8] < orderdRow3[15:8]) ? {orderdRow3[15:8] , orderdRow1[15:8] , orderdRow2[15:8]} : {orderdRow1[15:8] , orderdRow3[15:8] , orderdRow2[15:8]}) :
		  ((orderdRow1[15:8] < orderdRow2[15:8]) ? {orderdRow2[15:8] , orderdRow1[15:8] ,orderdRow3[15:8]} : {orderdRow1[15:8] , orderdRow2[15:8] ,orderdRow3[15:8]});
		
		
		/////////////////////////////
		assign pixel_out1 = orderdColumn[15:8];*/
	always @(posedge clk) begin
		 /////////////row 1///////////////
		 
		if(p4 <= p1 && p4 <= p7) begin
			if(p1 < p7) begin // p4 < p1 < p7
				orderdRow1 <= {p7 , p1 , p4};
			end
			else begin// p4 < p7 < p1
			orderdRow1 <= {p1 , p7 , p4};
			end
		end
		else if(p1 <= p4 && p1 <= p7) begin 
			if(p4 < p7) begin//p1 < p4 < p7
				orderdRow1 <= {p1 , p4 , p7};
			end
			else begin//p1 < p7 < p4
				orderdRow1 <= {p4 , p7 , p1};
			end
		end
		else if(p7 <= p1 && p7 <= p4) begin
			if(p1 < p4) begin// p7 < p1 < p4
				orderdRow1 <= {p4 , p1 , p7};
			end
			else begin//p7 < p4 < p1
				orderdRow1 <= {p1 , p4 , p7};
			end
		end
		/////////////row 2///////////////
		if(p5 <= p2 && p5 <= p8) begin
			if(p2 < p8) begin // p5 < p2 < p8
				orderdRow2 <= {p8 , p2 , p5};
			end
			else begin// p5 < p8 < p2
				orderdRow2 <= {p2 , p8 , p5};
			end
		end
		else if(p2 <= p5 && p2 <= p8) begin 
			if(p5 < p8) begin//p2 < p5 < p8
				orderdRow2 <= {p8 , p5 , p2};
			end
			else begin//p2 < p8 < p5
			orderdRow2 <= {p5 , p8 , p2};
			end
		end
		else if(p8 <= p2 && p8 <= p5) begin
			if(p2 < p5) begin// p8 < p2 < p5
				orderdRow2 <= {p5 , p2 , p8};
			end
			else begin//p8 < p5 < p2
				orderdRow2 <= {p2 , p5 , p8};
			end
		end
		/////////////row 3///////////////
		if(p6 <= p3 && p6 <= p9) begin
			if(p3 < p9) begin // p6 < p3 < p9
				orderdRow3 <= {p9 , p3 , p6};
			end
			else begin// p6 < p9 < p3
				orderdRow3 <= {p3 , p9 , p6};
			end
		end
		else if(p3 <= p6 && p3 <= p9) begin 
			if(p6 < p9) begin//p3 < p6 < p9
				orderdRow3 <= {p9 , p6 , p3};
			end
			else begin//p3 < p9 < p6
				orderdRow3 <= {p6 , p9 , p3};
			end
		end
		else if(p9 <= p3 && p9 <= p6) begin
			if(p3 < p6) begin// p9 < p3 < p6
				orderdRow3 <= {p6 , p3 , p9};
			end
			else begin//p9 < p6 < p3
				orderdRow3 <= {p3 , p6 , p9};
			end
		end
		
		////////////// sort culumn /////////////////
		/////////////culumn 2///////////////
		if(orderdRow1[15:8] <= orderdRow2[15:8] && orderdRow1[15:8] <= orderdRow3[15:8]) begin
			if(orderdRow2[15:8] < orderdRow3[15:8]) begin // column1 < column2 < column3
				orderdColumn <= {orderdRow3[15:8] , orderdRow2[15:8] , orderdRow1[15:8] };
			end
			else begin//  column1 < column3 < column2
				orderdColumn <= {orderdRow2[15:8], orderdRow3[15:8] , orderdRow1[15:8]};
			end
		end
		else if(orderdRow2[15:8] <= orderdRow1[15:8] && orderdRow2[15:8] <= orderdRow3[15:8]) begin 
			if(orderdRow1[15:8] < orderdRow3[15:8]) begin//column2 < column1 < column3
				orderdColumn <= {orderdRow3[15:8] , orderdRow1[15:8] , orderdRow2[15:8]};
			end
			else begin//column2 < column3 < column1
				orderdColumn <= {orderdRow1[15:8] , orderdRow3[15:8] , orderdRow2[15:8]};
			end
		end
		else if(orderdRow3[15:8] <= orderdRow1[15:8] && orderdRow3[15:8] <= orderdRow2[15:8]) begin
			if(orderdRow1[15:8] < orderdRow2[15:8]) begin// column3 < column1 < column2
				orderdColumn <= {orderdRow2[15:8] , orderdRow1[15:8] ,orderdRow3[15:8]};
			end
			else begin//column3 < column2 < column1
				orderdColumn <= {orderdRow1[15:8] , orderdRow2[15:8] ,orderdRow3[15:8]};
			end
		end
		
		pixel_out <= orderdColumn[15:8];
	end
		
endmodule
