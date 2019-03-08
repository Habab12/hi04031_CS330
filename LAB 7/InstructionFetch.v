module InstructionFetch
(
	input clk,
	input reset,
	output wire [31:0] Is
);
	wire [63:0] pcOut;
	wire [63:0] adderAddress;
	
	ProgramCounter PC(
		.clk(clk),
		.reset(reset),
		.PC_In(adderAddress),
		.PC_Out(pcOut)
	);
	
	Adder Ad(
		.a(pcOut),
		.b(64'd4),
		.out(adderAddress)
	);
	
	InstructionMemory IM (
		.InstAddress(pcOut),
		.Instruction(Is)
	);

endmodule