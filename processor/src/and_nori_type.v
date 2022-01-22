module and_nori_type(op,F);
input [3:0] op;
output F;
wire a,b,c;

not(a,op[3]);
not(b,op[1]);
not(c,op[0]);

and(F,a,op[2],b,c);
endmodule