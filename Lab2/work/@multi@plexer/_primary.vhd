library verilog;
use verilog.vl_types.all;
entity MultiPlexer is
    port(
        a               : in     vl_logic_vector(63 downto 0);
        b               : in     vl_logic_vector(63 downto 0);
        selector        : in     vl_logic_vector(63 downto 0);
        c               : out    vl_logic_vector(63 downto 0)
    );
end MultiPlexer;
