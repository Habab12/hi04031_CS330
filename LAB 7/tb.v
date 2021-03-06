module tb
(

);
	reg reset;
	reg clk;
	wire [31:0] Is;
	
	InstructionFetch IF (
		.clk(clk),
		.reset(reset),
		.Is(Is)
	);
	
	initial
		begin
			clk = 1'b0;
			reset = 1'b1;
			#10 reset = 1'b0; 
	  end
	
	always
		#10 clk = ~clk;
	/*	
	initial
	begin
			clk = 1'b0;
			reset = 0'b1;
			#10 reset = 1'b1; 
	  end
	
	always
		#10 clk = ~clk;
	*/	
endmodule
