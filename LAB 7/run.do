vlib work

vlog tb.v ProgramCounter.v InstructionFetch.v InstructionMemory.v Adder.v

vsim -novopt work.tb

add wave sim:/tb/*

view wave

run 1000ns