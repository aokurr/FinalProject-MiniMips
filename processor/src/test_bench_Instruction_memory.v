`define DELAY 20
module test_bench_Instruction_memory();

reg [4:0]pc;
wire [15:0]instruction;
Instruction_Memory ahmet(pc,instruction);
initial begin
	$readmemb("instruction.txt",ahmet.memory);
	pc=5'b00001;
	#`DELAY;
	pc=5'b00011;
	#`DELAY;
end
initial begin
$monitor(",pc=%5b,instruction=%16b",pc,instruction);
end
endmodule