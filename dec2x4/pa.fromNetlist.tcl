
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name dec2x4 -dir "C:/Users/korisnik/Desktop/VHDL/dec2x4/planAhead_run_1" -part xc3s1500fg676-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/dec2x4/dec2x4.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/dec2x4} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "dec2x4.ucf" [current_fileset -constrset]
add_files [list {dec2x4.ucf}] -fileset [get_property constrset [current_run]]
link_design
