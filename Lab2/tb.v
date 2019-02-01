module tb
(
  
);
  reg selector;
  reg [63:0] a;
  reg [63:0] b;
  wire [63:0] c;
  
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
    #5 selector = 1'b0;
    a = 64'b1;
    b = 64'b0;
  end

endmodule
