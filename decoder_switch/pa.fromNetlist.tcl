
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name decoder_switch -dir "C:/Users/korisnik/Desktop/VHDL/decoder_switch/planAhead_run_1" -part xc3s1500fg676-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/decoder_switch/lab2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/decoder_switch} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "lab2.ucf" [current_fileset -constrset]
add_files [list {lab2.ucf}] -fileset [get_property constrset [current_run]]
link_design
