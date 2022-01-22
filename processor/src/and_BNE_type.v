module and_BNE_type(op,F);
input [3:0] op;
output F;
wire a,b;

not(a,op[3]);
not(b,op[0]);

and(F,a,b,op[2],op[1]);
endmodule