vlib work

vlog cu.v ALU_Control.v top_control.v tb.v 
vsim -novopt work.tb

add wave sim:/tb/*

view wave

run 1000ns