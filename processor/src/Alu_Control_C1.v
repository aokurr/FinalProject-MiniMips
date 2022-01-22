module Alu_Control_C1 (ALUop2,ALUop1,ALUop0,Func,F);
input ALUop2,ALUop1,ALUop0;
input [2:0]Func;
output F;
wire [8:0]x;
wire [2:0] inversef;
wire [2:0] inversea;

and q1(x[0],ALUop0,ALUop1,ALUop2);

not q2(inversef[0],Func[0]);
not q3(inversef[1],Func[1]);
not q4(inversef[2],Func[2]);

and q5(x[1],inversef[2],inversef[0]);
and q6(x[2],Func[2],inversef[1],Func[0]);

or q7(x[3],x[1],x[2]);
and q8(x[4],x[3],x[0]);

not q9(inversea[0],ALUop0);
not q10(inversea[1],ALUop1);
not q11(inversea[2],ALUop2);

and q12(x[5],inversea[1],ALUop0);
and q13(x[6],inversea[1],ALUop2);
and q14(x[7],inversea[2],inversea[0],ALUop1);

or q15(F,x[4],x[5],x[6],x[7]);

endmodule