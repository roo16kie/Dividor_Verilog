`timescale 1ns / 10ps
module div(out, in1, in2, dbz);

parameter width = 6;

input  	[width-1:0] in1; // Dividend
input  	[width-1:0] in2; // Divisor
output reg  [width-1:0] out; // Quotient
output dbz;

/*
complement
*/
reg [width-1:0] count  ;
reg [width-1:0] counter  ;
reg [width-1:0] temp_in1 ; 
wire [width-1:0]temp_out ;


/********************************
You need to write your code at here
********************************/



assign dbz = (in2==6'd0) ? 1'b1 : 1'b0 ;
assign temp_out = count + counter ;

always@(*)
begin
	if(in1<in2)
	out = 6'b000000 ;
	else if(in1==in2)
	out = 6'b000001 ;
	else if (in1>in2)
	out = temp_out ;	
	else
	out = 6'b000000 ; 
end

always@(*)
begin
	if(in1>=60*in2)
		temp_in1 = in1-60*in2 ;
	else if(in1>=50*in2)
		temp_in1 = in1-50*in2 ;
	else if(in1>=40*in2)
		temp_in1 = in1-40*in2 ;
	else if(in1>=30*in2)
		temp_in1 = in1-30*in2 ;
	else if(in1>=20*in2)
		temp_in1 = in1-20*in2 ;
	else if(in1>=10*in2)
		temp_in1 = in1-10*in2 ;		
	else
		temp_in1 = in1 ;
end

always@(*)
begin
	if(in1>=60*in2)
		counter = 6'd60 ;
	else if(in1>=50*in2)
		counter = 6'd50 ;
	else if(in1>=40*in2)
		counter = 6'd40 ;
	else if(in1>=30*in2)
		counter = 6'd30 ;
	else if(in1>=20*in2)
		counter = 6'd20 ;
	else if(in1>=10*in2)
		counter = 6'd10 ;
	else
		counter = 6'd0 ;
end

always@(*)
begin
	if(temp_in1>=9*in2)
		count = 6'd9 ;
	else if(temp_in1>=8*in2)
		count = 6'd8 ;
	else if(temp_in1>=7*in2)
		count = 6'd7 ;
	else if(temp_in1>=6*in2)
		count = 6'd6 ;
	else if(temp_in1>=5*in2)
		count = 6'd5 ;
	else if(temp_in1>=4*in2)
		count = 6'd4 ;
	else if(temp_in1>=3*in2)
		count = 6'd3 ;
	else if(temp_in1>=2*in2)
		count = 6'd2 ;
	else if(temp_in1>=in2)
		count = 6'd1 ;
	else
		count = 6'd0 ;
end

endmodule