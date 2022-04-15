# run_impl_v2.tcl
opt_design -directive $optDirective
run::gen_dcp opt_design \
    $ImplOutputDir post_opt_${date}
run::design_analysis opt_design \
    $ImplOutputDir post_opt_${date}

place_design -directive $placeDirective
run::gen_dcp place_design \
    $ImplOutputDir post_place_${date}
run::design_analysis place_design \
    $ImplOutputDir post_place_${date}

phys_opt_design -directive $physOptDirectiveAp
run::gen_dcp phys_opt_design(AP) \
    $ImplOutputDir post_phys_opt_AP_${date}
run::design_analysis phys_opt_design(AP) \
    $ImplOutputDir post_phys_opt_AP_${date}

route_design -directive $routeDirective
run::gen_dcp route_design \
    $ImplOutputDir post_route_${date}
run::design_analysis route_design \
    $ImplOutputDir post_route_AP_${date}

