module Mips(input clk);
wire [15:0]instruction;
wire RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2;
wire [2:0]rt_rd;
wire [31:0]read_data_1, read_data_2;
wire [31:0]write_data;
wire [31:0] _32_bit;
wire [31:0] Alu_choose;
wire [31:0] Alu_result;
wire C2,C1,C0;
wire Co;
wire [31:0] read_data;
wire branch_1,branch_2,branch_;
wire [4:0]branch_result,adding_branch;
reg [4:0]pc_current;
wire [4:0] adding_pc;
wire or_for_beq,xor_for_beq;
initial begin
  pc_current <= 5'b00000;
 end
 always @(posedge clk)
 begin 
   pc_current <= branch_result;
 end

 Adder_5_bit m13(pc_current,5'b00001,adding_pc);
Instruction_Memory m0(pc_current,instruction);

Main_Control m1(instruction[15:12],RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2);

Alu_Control m6(ALUop2,ALUop1,ALUop0,instruction[2:0],C2,C1,C0);
m21_3_bit m2(rt_rd,instruction[8:6],instruction[5:3],RegDst);
Registers m3(read_data_1, read_data_2, write_data, instruction[11:9], instruction[8:6],rt_rd,RegWrite,clk);
Sign_Extend m4(instruction [5:0] ,_32_bit);

m21_32_bit m5(Alu_choose, read_data_2, _32_bit,ALUSrc);

alu_32_bit m7(read_data_1,Alu_choose,C0,C1,C2,C1,Alu_result,Co);
or_for_beq m14(Alu_result,or_for_beq);
xor m15(xor_for_beq,or_for_beq,1'b1);

Data_Memory m8(clk,Alu_result, read_data_2, MemWrite,MemRead,read_data);
m21_32_bit m9(write_data,Alu_result,read_data,MemtoReg);
and m10(branch_1,xor_for_beq,Branch);
and m16(branch_2,or_for_beq,Branch_not);
or m17(branch_,branch_1,branch_2);
Adder_5_bit m11(_32_bit[4:0],adding_pc,adding_branch);
m21_5_bit m12(branch_result, adding_pc, adding_branch,branch_);
endmodule