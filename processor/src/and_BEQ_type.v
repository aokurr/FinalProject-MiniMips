module and_BEQ_type(op,F);
input [3:0] op;
output F;
wire a,b;

not(a,op[3]);
not(b,op[1]);

and(F,a,b,op[2],op[0]);
endmodule