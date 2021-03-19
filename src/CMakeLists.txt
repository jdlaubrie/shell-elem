########################################
# Set up how to compile the source files
########################################

# Add the source files
SET (ShellE_src
  ${src}/main.f90
  ${src}/ctrl_mod.f90
  ${src}/info_mod.f90
  ${src}/input_mod.f90
  ${src}/esets_mod.f90
  ${src}/history_mod.f90
  ${src}/load_mod.f90
  ${src}/material_mod.f90
  ${src}/model_mod.f90
  ${src}/nsets_mod.f90
  ${src}/param_mod.f90
  ${src}/shape_mod.f90
  ${src}/shell2d_mod.f90
  ${src}/step_mod.f90
  ${src}/quadrature_mod.f90
  ${src}/assembler.f90
  ${src}/computation.f90
  ${src}/control.f90
  ${src}/datainp.f90
  ${src}/geometry.f90
  ${src}/initial_comp_0.f90
  ${src}/initial_comp_t.f90
  ${src}/inttoch.f90
  ${src}/inverse.f90
  ${src}/iteration.f90
  ${src}/material.f90
  ${src}/output.f90
  ${src}/to_paraview.f90
)

# Define the executable in terms of the source files
ADD_EXECUTABLE (${ShellEexe} ${ShellE_src})

#####################################################
# Add the needed libraries and special compiler flags
#####################################################

# This links simpact to the simpact library
#target_link_libraries (${membraneexe} ${walllib})
