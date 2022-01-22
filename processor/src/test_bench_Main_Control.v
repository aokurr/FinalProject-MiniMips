`define DELAY 20
module test_bench_Main_Control();
reg [3:0]op;
wire RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2;
Main_Control ahmet(op,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2);
initial begin
op = 4'b0000;/*R-type*/
#`DELAY;
op = 4'b0001;/*I-type addı-ori..*/
#`DELAY;
op = 4'b0101;/*I-type BEQ*/
#`DELAY;
op = 4'b1000;/*I-type lw*/
#`DELAY;
op = 4'b1001;/*I-type SW*/
#`DELAY;
end
initial begin
$monitor("op=%4b,RegDst=%1b,ALUSrc=%1b,MemtoReg=%1b,RegWrite=%1b,MemRead=%1b,MemWrite=%1b,Branch=%1b,Branch_not=%1b,ALUop0=%1b,ALUop1=%1b,ALUop2=%1b",
					op,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch_not,ALUop0,ALUop1,ALUop2);


end

endmodule