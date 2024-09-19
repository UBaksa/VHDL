
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name de3x8 -dir "C:/Users/korisnik/Desktop/VHDL/de3x8/planAhead_run_1" -part xc3s1500fg676-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/de3x8/de3x8.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/de3x8} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "de3x8.ucf" [current_fileset -constrset]
add_files [list {de3x8.ucf}] -fileset [get_property constrset [current_run]]
link_design
