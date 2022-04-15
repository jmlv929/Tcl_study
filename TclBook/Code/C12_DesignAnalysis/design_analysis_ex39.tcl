# design_analysis_ex39.tcl
report_utilization -name util -spreadsheet_file \
    util_table.xlsx -spreadsheet_table "Hierarchy"
report_utilization -name util -spreadsheet_file \
    bram_util_table.xlsx -spreadsheet_table "Memory - Block RAM Tile"
report_utilization -name util -spreadsheet_file \
    clock_util_table.xlsx -spreadsheet_table "Clocking - BUFGCTRL"
