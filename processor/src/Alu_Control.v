module Alu_Control(ALUop2,ALUop1,ALUop0,Func,C2,C1,C0);
input ALUop0,ALUop1,ALUop2;
input [2:0]Func;
output C2,C1,C0;

Alu_Control_C2 C_2(ALUop2,ALUop1,ALUop0,Func,C2);

Alu_Control_C1 C_1(ALUop2,ALUop1,ALUop0,Func,C1);

Alu_Control_C0 C_0(ALUop2,ALUop1,ALUop0,Func,C0);

endmodule