# Define clock on clk port
create_clock -name clk -period 10 [get_ports clk]

# Input delays (for data inputs, not clk)
set_input_delay 2 -clock clk [get_ports {a[*] b[*] op[*]}]

# Output delays
set_output_delay 2 -clock clk [get_ports {result[*]}]
