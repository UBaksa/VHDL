
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name register8bit -dir "C:/Users/korisnik/Desktop/VHDL/register8bit/planAhead_run_1" -part xc3s1500fg676-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/korisnik/Desktop/VHDL/register8bit/register8bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/korisnik/Desktop/VHDL/register8bit} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "register8bit.ucf" [current_fileset -constrset]
add_files [list {register8bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
