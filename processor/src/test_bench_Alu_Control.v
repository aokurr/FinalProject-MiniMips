`define DELAY 20
module test_bench_Alu_Control();
reg ALUop0,ALUop1,ALUop2;
reg [2:0]Func;
wire C2,C1,C0;
Alu_Control ahmet(ALUop2,ALUop1,ALUop0,Func,C2,C1,C0);
initial begin
ALUop2=1'b1; ALUop1=1'b1; ALUop0=1'b1; Func=3'b000;
#`DELAY;
ALUop2=1'b1; ALUop1=1'b1; ALUop0=1'b1; Func=3'b001;
#`DELAY;
ALUop2=1'b0; ALUop1=1'b0; ALUop0=1'b0;
#`DELAY;
ALUop2=1'b1; ALUop1=1'b0; ALUop0=1'b0;
#`DELAY;
ALUop2=1'b0; ALUop1=1'b1; ALUop0=1'b0;
#`DELAY;
ALUop2=1'b1; ALUop1=1'b0; ALUop0=1'b1;
#`DELAY;
end
initial begin
$monitor("ALUop2=%1b,ALUop1=%1b,ALUop0=%1b,Func=%3b,C2=%1b,C1=%1b,C0=%1b",
					ALUop2,ALUop1,ALUop0,Func,C2,C1,C0);


end

endmodule