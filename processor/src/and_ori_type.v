module and_ori_type(op,F);
input [3:0] op;
output F;
wire a,b;

not(a,op[3]);
not(b,op[2]);

and(F,a,b,op[0],op[1]);
endmodule