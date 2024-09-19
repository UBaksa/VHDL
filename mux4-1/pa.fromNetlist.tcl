
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name mux4-1 -dir "C:/Users/korisnik/Desktop/VHDL/mux4-1/planAhead_run_1" -part xc3s200pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/mux4-1/mux41.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/mux4-1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "mux41.ucf" [current_fileset -constrset]
add_files [list {mux41.ucf}] -fileset [get_property constrset [current_run]]
link_design
