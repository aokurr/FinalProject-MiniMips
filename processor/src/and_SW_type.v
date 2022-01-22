module and_SW_type(op,F);
input [3:0] op;
output F;
wire a,b,c;

not(a,op[2]);
not(b,op[1]);
and(F,a,b,op[3],op[0]);
endmodule