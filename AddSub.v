module AddSub8bit(a,b,sum,cin,cout);
    input [7:0] a,b;
    input cin; //1=sub,0=add
    output [7:0] sum;
    output cout; //check if  the number is + or -
    
    wire [7:0] bin;
    assign bin[0] = b[0]^cin;
    assign bin[1] = b[1]^cin;
    assign bin[2] = b[2]^cin;
    assign bin[3] = b[3]^cin;
    assign bin[4] = b[4]^cin;                          
    assign bin[5] = b[5]^cin;
    assign bin[6] = b[6]^cin;
    assign bin[7] = b[7]^cin;
    
      
    wire [8:1] carry; 
     FullAdder2 FA0(carry[1],sum[0],a[0],bin[0],cin);
     FullAdder2 FA1(carry[2],sum[1],a[1],bin[1],carry[1]);
     FullAdder2 FA2(carry[3],sum[2],a[2],bin[2],carry[2]);
     FullAdder2 FA3(carry[4],sum[3],a[3],bin[3],carry[3]);
     FullAdder2 FA4(carry[5],sum[4],a[4],bin[4],carry[4]);
     FullAdder2 FA5(carry[6],sum[5],a[5],bin[5],carry[5]);
     FullAdder2 FA6(carry[7],sum[6],a[6],bin[6],carry[6]);
     FullAdder2 FA7(carry[8],sum[7],a[7],bin[7],carry[7]);
     
     assign cout = cin^carry[8];
   
endmodule