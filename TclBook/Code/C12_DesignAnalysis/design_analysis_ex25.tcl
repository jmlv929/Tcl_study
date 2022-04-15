# design_analysis_ex25.tcl
report_timing -hold -slack_lesser_than 0 \
    -max 100 -rpx ./hold_violation.rpx
open_report -name hold_violation hold_violation.rpx
report_timing -hold -slack_lesser_than 0 \
    -max 100 -file ./hold_violation.rpt
