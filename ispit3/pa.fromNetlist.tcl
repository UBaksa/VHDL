
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ispit3 -dir "C:/Users/korisnik/Desktop/VHDL/ispit3/planAhead_run_3" -part xc3s200pq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/ispit3/ispit3.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/ispit3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ispit3.ucf" [current_fileset -constrset]
add_files [list {ispit3.ucf}] -fileset [get_property constrset [current_run]]
link_design
