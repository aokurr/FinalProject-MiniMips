module Alu_Control_C2 (ALUop2,ALUop1,ALUop0,Func,F);
input ALUop2,ALUop1,ALUop0;
input [2:0]Func;
output F;
wire [6:0]x;
wire [5:0] inverse;

and q1(x[0],ALUop0,ALUop1,ALUop2);

not q2(inverse[0],Func[1]);
and q3(x[1],inverse[0],Func[2]);

not q4(inverse[1],Func[1]);
not q5(inverse[2],Func[0]);
not q6(inverse[3],ALUop2);
not q7(inverse[4],ALUop0);

and q8(x[2],inverse[1],inverse[2]);
or q9(x[3],x[1],x[2]);
and q10(x[4],x[3],x[0]);

and q11(x[5],inverse[3],ALUop0);
and q12(x[6],ALUop1,inverse[4]);

or q13(F,x[6],x[5],x[4]);
endmodule