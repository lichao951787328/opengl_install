set(OpenGL_INCLUDE_DIRS    "")  
set(OpenGL_LINK_DIRS       ""   )

# include paths
include_directories(${OpenGL_INCLUDE_DIRS})
link_directories(${OpenGL_LINK_DIRS})
message("--[OpenGL]: Package found! Include ${OpenGL_INCLUDE_DIRS} and ${OpenGL_LINK_DIRS}" )
