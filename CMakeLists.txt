cmake_minimum_required(VERSION 3.5.0)

project (Nelder-Mead-Optimisation)

set(CMAKE_CXX_STANDARD 17)
set(SOLVER_DIR ${CMAKE_SOURCE_DIR}/NelderMeadSolver)
set(POINT_DIR ${SOLVER_DIR}/Points)
set(FUNCTION_DIR ${SOLVER_DIR}/FunctionReader)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -Wsign-compare -O2 -DNDEBUG")

message("General compiler flags: " ${CMAKE_CXX_FLAGS})

add_subdirectory(NelderMeadSolver)