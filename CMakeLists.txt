# CMake configuration script for ShellE

##################################################
# Define the project and the depencies that it has
##################################################
CMAKE_MINIMUM_REQUIRED (VERSION 2.8)
PROJECT (ShellE)
ENABLE_LANGUAGE (Fortran)

# Setup current version of ShellE
SET (SHELLE_MAJOR_VERSION 1)
SET (SHELLE_MINOR_VERSION 0)
#SET (SHELLE_PATCH 0)
SET (SHELLE_VERSION ${SHELLE_MAJOR_VERSION}.${SHELLE_MINOR_VERSION})
SET (VERSION ${SELLE_VERSION})

# Send the variables to source code header#CONFIGURE_FILE (
#	"${PROJECT_SOURCE_DIR}/TutorialConfig.h.in"
#	"${PROJECT_BINARY_DIR}/TutorialConfig.h"
#)

# UNIX, WIN32 are environment variables as flags set by default system
IF (UNIX)
  MESSAGE (STATUS "This is a ${CMAKE_SYSTEM_NAME} system")
ELSEIF (WIN32)
  MESSAGE (STATUS "This is a Windows System")
ENDIF()

# Show warnings during compilation
IF (${CMAKE_Fortran_COMPILER_ID} MATCHES "GNU")
  MESSAGE (STATUS "Setting the flags for ${CMAKE_Fortran_COMPILER_ID} compiler")
  SET (warnings "-Wall -Wextra")
ENDIF ()
SET(CMAKE_Fortran_FLAGS ${warnings})
############################################################
# Define the actual files and folders that make up the build
############################################################
# Disable in-source builds to prevent source tree corruption.
IF ("${CMAKE_SOURCE_DIR}" STREQUAL " ${CMAKE_BINARY_DIR}")
  MESSAGE (FATAL_ERROR "
  FATAL: In-source builds are not allowed.
         You should create a separate directory for build files.")
ENDIF ()

# Define the executable name
SET (ShellEexe shelle)

# Define some directories
SET (src ${CMAKE_SOURCE_DIR}/src)

# Have the .mod files placed in the modules folder
SET (CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/modules)

# The source for the ShellE binary and have it placed in the bin folder
ADD_SUBDIRECTORY (${src})

# Installation
INSTALL (PROGRAMS ${PROJECT_BINARY_DIR}/src/shelle DESTINATION bin)
