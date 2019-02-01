module MultiPlexer
(
  input  [63:0] a , [63:0] b, selector,
  output reg [63:0] c
);
  always @(selector , a , b)
      if (selector)
        c <= a;
      else
        c <= b;
endmodule