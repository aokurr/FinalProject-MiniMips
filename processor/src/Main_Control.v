module Main_Control(op,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2);
input [3:0]op;
output RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2;
wire [9:0]wires;

and_R_type q0(op,wires[0]);
and_addi_type q1(op,wires[1]);
and_andi_type q2(op,wires[2]);
and_ori_type q3(op,wires[3]);
and_nori_type q4(op,wires[4]);
and_BEQ_type q5(op,wires[5]);
and_BNE_type q6(op,wires[6]);
and_SLTI_type q7(op,wires[7]);
and_LW_type q8(op,wires[8]);
and_SW_type q9(op,wires[9]);

or a0(RegDst,wires[0]);
or a1(ALUSrc,wires[1],wires[2],wires[3],wires[4],wires[7],wires[8],wires[9]);
or a2(MemtoReg,wires[8]);
or a3(RegWrite,wires[0],wires[1],wires[2],wires[3],wires[4],wires[7],wires[8]);
or a4(MemRead,wires[8]);
or a5(MemWrite,wires[9]);
or a6(Branch,wires[5]);
or a7(ALUop2,wires[0],wires[5],wires[6],wires[7]);
or a8(ALUop1,wires[0],wires[3],wires[4],wires[7]);
or a9(ALUop0,wires[0],wires[2],wires[4],wires[6]);
or a10(Branch_not,wires[6]);


endmodule