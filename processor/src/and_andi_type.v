module and_andi_type(op,F);
input [3:0] op;
output F;
wire a,b,c;

not(a,op[3]);
not(b,op[2]);
not(c,op[0]);

and(F,a,b,c,op[1]);
endmodule