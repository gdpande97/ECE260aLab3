
set clock_cycle 0.5 
set io_delay 0.2 

set clock_port clk

create_clock -name clk -period $clock_cycle [get_ports $clock_port]


set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[8]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[9]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[10]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[11]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[12]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[13]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[14]}]
set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {a[15]}]

set_input_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {reset}]





set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[13]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[14]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[15]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[16]}]
set_output_delay -clock [get_clocks clk] -add_delay -max $io_delay [get_ports {s[17]}]


