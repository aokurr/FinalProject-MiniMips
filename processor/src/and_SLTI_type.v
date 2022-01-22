module and_SLTI_type(op,F);
input [3:0] op;
output F;
wire a;

not(a,op[3]);
and(F,a,op[2],op[1],op[0]);
endmodule