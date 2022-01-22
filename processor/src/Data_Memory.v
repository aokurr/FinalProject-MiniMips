module Data_Memory(
 input clk,
 input [31:0]   access_addr,
 input [31:0]   write_data,
 input mem_write,
 input mem_read,
 output [31:0]   read_data
);

reg [31:0] memory [255:0];
 always @(posedge clk) begin
  if (mem_write)
   memory[access_addr[7:0]] <= write_data;
 end
 assign read_data = (mem_read==1'b1) ? memory[access_addr[7:0]]: 32'd0; 

endmodule