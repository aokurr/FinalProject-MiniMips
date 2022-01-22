module and_R_type(op,F);
input [3:0] op;
output F;
wire a,b,c,d;

not(a,op[3]);
not(b,op[2]);
not(c,op[1]);
not(d,op[0]);

and(F,a,b,c,d);
endmodule