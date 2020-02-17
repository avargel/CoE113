read_verilog updown.v
current_design updown
link
check_design > logs/check_design.log
source timing.con
compile
report_constraint -all_violators > logs/constraint_report.log
report_area > logs/area_report.log
report_timing > logs/timing_report.log
write_sdf -version 1.0 mapped/updown_mapped.sdf
write -f verilog -hier -out mapped/updown_mapped.v
quit
