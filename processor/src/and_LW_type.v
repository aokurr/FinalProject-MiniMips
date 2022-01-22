module and_LW_type(op,F);
input [3:0] op;
output F;
wire a,b,c;

not(a,op[2]);
not(b,op[1]);
not(c,op[0]);

and(F,a,b,c,op[3]);
endmodule