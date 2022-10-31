module FullAdder2(a,b,sum,cin,cout);
input a,b,cin;
output sum, cout;

assign sum = a ^ b ^ cin;
assign cout = (a & b) | (a & cin) | (b & cin);

endmodule


