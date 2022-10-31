module tb;
reg [7:0] inp1, inp2;
wire [7:0] sum;
reg carryin;
wire carryout;

initial
begin
	inp1 = 8 'b00000001;
	inp2 = 8 'b00010010;
	carryin = 0;
	//inp1=1,inp2=18 => 18+1
	
	#20;
	inp1 = 8 'b01001001;
	inp2 = 8 'b01010101;
	carryin = 1;
	//inp1=73,input2=85 => 73-85
	
	
	#20;
	inp1 = 8 'b00000111;
	inp2 = 8 'b00000101;
	carryin = 0;
	//inp1=7,inp2=5 => 7+5
	
end
/*
always
begin
	#10 inp1 = 1;
	#10 inp2 = 0;
	#10 inp1 = 10;
	 inp2 = 20;
	
end
*/

AddSub8bit add_sub_8b (inp1, inp2, sum, carryin, carryout);

endmodule