module tb
(
  
);
  reg selector;
  reg [63:0]a;
  reg [63:0]b;
  wire [63:0]c;
  
  MultiPlexer mP1
  (
    .a(a),
    .b(b),
    .selector(selector),
    .c(c)
  );
  
  initial
  begin
    selector = 1'b1;
    a = 64'b1;
    b = 64'b0;
    
    
    #10 selector = 1'b0;
    #5 a = 64'b0;
 
    #10 selector = 1'b1;
    #5 a = 64'b1;
    
    #10 selector = 1'b0;
    #5 a = 64'b0;
 
    #10 selector = 1'b1;
    #5 a = 64'b1;
    
    #10 selector = 1'b0;
    #5 a = 64'b0;
 
    #10 selector = 1'b1;
    #5 a = 64'b1;
    
    #10 selector = 1'b0;
    #5 a = 64'b0;
 
    #10 selector = 1'b1;
    #5 a = 64'b1;
    
    #10 selector = 1'b0;
 
    #10 selector = 1'b1;
    
    #10 selector = 1'b0;
 
    #10 selector = 1'b1;
 
    #10 selector = 1'b0;
 
    #10 selector = 1'b1;
    
    #10 selector = 1'b0;
 
    #10 selector = 1'b1;
 
    #10 selector = 1'b0;
 
    #10 selector = 1'b1;
  end

 

endmodule
