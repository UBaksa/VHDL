
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name decoder -dir "C:/Users/korisnik/Desktop/VHDL/decoder/planAhead_run_5" -part xc3s1500fg676-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/decoder/decoder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/decoder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "decoder.ucf" [current_fileset -constrset]
add_files [list {decoder.ucf}] -fileset [get_property constrset [current_run]]
link_design
