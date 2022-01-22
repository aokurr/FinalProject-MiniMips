`timescale 1ns / 1ps
module Registers(read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, RegWrite, clk );
	output [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [2:0] read_reg_1, read_reg_2, write_reg;
	input RegWrite, clk;
 
	 reg [31:0] reg_array [7:0];
	 integer i;
	 always @ (posedge clk ) begin
		if(RegWrite) begin
		 reg_array[write_reg] <= write_data;
		end
	 end
	 
	 assign read_data_1 = reg_array[read_reg_1];
	 assign read_data_2 = reg_array[read_reg_2];

	endmodule