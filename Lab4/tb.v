module TestBench
(
);
	reg[63:0] WriteData;
	reg clk, reset , RegWrite;
	reg[4:0] RS1 , RS2 , RD;
	wire[63:0] ReadData1 , ReadData2;
	
	RegisterFile rf
	(
		.WriteData(WriteData),
		.RS1(RS1),
		.RS2(RS2),
		.clk(clk),
		.RD(RD),
		.RegWrite(RegWrite),
		.reset(reset),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
		initial
		begin
		reset = 0;
		clk = 1'b0;
		RegWrite = 0;
		RS1 = 5'd1;
		RS2 = 5'd2;
		RD = 5'd3;
		#50 RegWrite = 1;
		clk = 1;
		WriteData = 64'd100;
		#10 RS2 = 5'd3;
		#50 reset = 1;
		end
endmodule