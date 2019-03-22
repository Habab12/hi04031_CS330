module top_control
(
	input [6:0] Opcode,
	input [3:0] Func,
	
	output  Branch,
	output  MemRead,
	output  MemtoReg,
	output  MemWrite,
	output  ALUSrc,
	output RegWrite,
	
	output  [3:0] Operation 
);

	wire [1:0] aluop;
	
	cu ControlUnit
	(
		.Opcode(Opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.MemtoReg(MemtoReg),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.ALUOp(aluop)
	);
	
	ALU_Control Alu 
	(
		.ALUOp(aluop),
		.Func(Func),
		.Operation(Operation)
	);
	
endmodule
	