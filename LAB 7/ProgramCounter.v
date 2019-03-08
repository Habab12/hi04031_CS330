module ProgramCounter
(
  input clk,
  input reset,
  input [63:0] PC_In,
  output reg [63:0] PC_Out
);


always @ (posedge clk or reset)

begin
    
  if (reset == 1'b1)
 
  begin
 
    PC_Out = 64'b0;  
	
  end
  
  else 
 
  begin
 
    PC_Out = PC_In ; 
    
  end
 
end 

endmodule