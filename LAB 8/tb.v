module tb
(
	
);

/* 
	TASK 1
	
	reg [6:0] Opcode;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire MemWrite;
	wire [1:0] ALUOp;
	wire ALUSrc;
	wire RegWrite;
	
	cu Control_Unit(
		.Opcode(Opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.ALUOp(ALUOp)
	);
	
	initial
	 begin
		  Opcode = 7'b0110011;
		  #50 Opcode = 7'b0000011;
	 end

endmodule */

/*
	TASK 2
	
	reg [1:0] ALUOp;
	reg [3:0] Func;
	
	wire [3:0] Operation;
	
	ALU_Control Alu 
	(
		.ALUOp(ALUOp),
		.Func(Func),
		.Operation(Operation)
	);
	
	initial
	 begin
		ALUOp = 2'b00;
		Func = 4'b0000;
		# 100 ALUOp = 2'b01;
		# 100 ALUOp = 2'b10;
		# 100 Func = 4'b1000;
		# 100 Func = 4'b0111;
		# 100 Func = 4'b0110;
	end
	
endmodule
*/
	reg [6:0] Opcode;
	reg [3:0] Func;
	
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;
	wire [3:0] Operation;


	top_control t 
	(
		.Opcode(Opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.Func(Func),
		.Operation(Operation)
	);
	
	initial
	 begin
		  Opcode = 7'b0110011;
		  Func = 4'b0000;
		  # 100 Func = 4'b1000;
		  # 100 Func = 4'b0111;
		  # 100 Func = 4'b0110;
		  #100 Opcode = 7'b0000011;
		  #100 Opcode = 7'b0100011;
		  #100 Opcode = 7'b1100011;
	 end
	
endmodule
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	