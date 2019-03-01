module RegisterFile
(
	input clk,
	input reset,
	input [63:0] WriteData,
	input [4:0] RS1,
	input [4:0] RS2,
	input [4:0] RD,
	input RegWrite,
	
	output reg [63:0] ReadData1,
	output reg [63:0] ReadData2
	
);

	reg [63:0]  Registar [31:0];
	
	initial 
	begin 
		Registar[0] = 64'd25;
		Registar[1] = 64'd76;
		Registar[2] = 64'd62;
		Registar[3] = 64'd6;
		Registar[4] = 64'd5;
		Registar[5] = 64'd39;
		Registar[6] = 64'd35;
		Registar[7] = 64'd72;
		Registar[8] = 64'd7;
		Registar[9] = 64'd72;
		Registar[10] = 64'd2;
		Registar[11] = 64'd34;
		Registar[12] = 64'd4;
		Registar[13] = 64'd64;
		Registar[14] = 64'd17;
		Registar[15] = 64'd79;
		Registar[16] = 64'd52;
		Registar[17] = 64'd49;
		Registar[18] = 64'd22;
		Registar[19] = 64'd23;
		Registar[20] = 64'd71;
		Registar[21] = 64'd94;
		Registar[22] = 64'd59;
		Registar[23] = 64'd29;
		Registar[24] = 64'd81;
		Registar[25] = 64'd56;
		Registar[26] = 64'd4;
		Registar[27] = 64'd99;
		Registar[28] = 64'd49;
		Registar[29] = 64'd54;
		Registar[30] = 64'd43;
		Registar[31] = 64'd52;
	end
	
	always @ (posedge clk & RegWrite)
	begin
		if (RD != 0)
			Registar[RD] = WriteData;
	end
	
	always @ (RS1 or RS2 or reset)
	begin
		if (reset)
		begin
			ReadData1 = 64'b0;
			ReadData2 = 64'b0;
		end
		else
		begin
			ReadData1 = Registar[RS1];
			ReadData2 = Registar[RS2];
		end
	end
	
	
endmodule