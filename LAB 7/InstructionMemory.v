module InstructionMemory
(
	input [63:0] InstAddress,
	output reg [31:0] Instruction
);
reg [7:0] Inst_Memory [15:0];
  initial
  begin
    Inst_Memory[0] = 8'b10000011;
    Inst_Memory[1] = 8'b00110100;
    Inst_Memory[2] = 8'b00000101;
    Inst_Memory[3] = 8'b00001111;
    Inst_Memory[4] = 8'b10110011;
    Inst_Memory[5] = 8'b10000100;
    Inst_Memory[6] = 8'b10011010;
    Inst_Memory[7] = 8'b00000000;
    Inst_Memory[8] = 8'b10010011;
    Inst_Memory[9] = 8'b10000100;
    Inst_Memory[10] = 8'b00010100;
    Inst_Memory[11] = 8'b00000000;
    Inst_Memory[12] = 8'b00100011;
    Inst_Memory[13] = 8'b00111000;
    Inst_Memory[14] = 8'b10010101;
    
    Inst_Memory[15] = 8'b00001110;
  
  end
  
  always @ (InstAddress)
  begin
    Instruction[7:0] = Inst_Memory[InstAddress];
    Instruction[15:8] = Inst_Memory[InstAddress+1];
    Instruction[23:16] = Inst_Memory[InstAddress+2];    
    Instruction[31:24] = Inst_Memory[InstAddress+3];
  end
endmodule