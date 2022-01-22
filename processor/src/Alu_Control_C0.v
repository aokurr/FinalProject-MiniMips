module Alu_Control_C0 (ALUop2,ALUop1,ALUop0,Func,F);
input ALUop2,ALUop1,ALUop0;
input [2:0]Func;
output F;
wire [5:0]x;
wire [2:0] inverse;

not q1(inverse[0],Func[1]);
not q2(inverse[1],Func[2]);
not q3(inverse[2],ALUop2);
and q11(x[0],ALUop2,ALUop1,ALUop0);
and q4(x[1],Func[2],inverse[0]);
and q5(x[2],Func[1],Func[0],inverse[1]);
or q6(x[3],x[1],x[2]);
and q7(x[4],x[0],x[3]);

and q8 (x[5],inverse[2],ALUop1);
or q9 (F,x[5],x[4]);
endmodule