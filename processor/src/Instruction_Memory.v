module Instruction_Memory(pc,instruction);
input [4:0]pc;
output [15:0]instruction;

 reg [15:0] memory [29:0];
 assign instruction=memory[pc];
endmodule