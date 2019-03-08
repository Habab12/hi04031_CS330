library verilog;
use verilog.vl_types.all;
entity InstructionFetch is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \Is\            : out    vl_logic_vector(31 downto 0)
    );
end InstructionFetch;
