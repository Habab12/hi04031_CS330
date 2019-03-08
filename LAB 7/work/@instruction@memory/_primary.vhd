library verilog;
use verilog.vl_types.all;
entity InstructionMemory is
    port(
        InstAddress     : in     vl_logic_vector(63 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0)
    );
end InstructionMemory;
