# CMAKE generated file: DO NOT EDIT!
# Generated by "Borland Makefiles" Generator, CMake Version 3.24

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force: NUL
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\src\OpenGL\NeHe_Lesson01-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\src\OpenGL\NeHe_Lesson01-master\build.cmake\BC55\Debug

# Include any dependencies generated for this target.
!include CMakeFiles\Lesson01.dir\depend.make
# Include any dependencies generated by the compiler for this target.
!include CMakeFiles\Lesson01.dir\compiler_depend.make

# Include the progress variables for this target.
!include CMakeFiles\Lesson01.dir\progress.make

# Include the compile flags for this target's objects.
!include CMakeFiles\Lesson01.dir\flags.make

CMakeFiles\Lesson01.dir\src\Lesson01.c.obj: CMakeFiles\Lesson01.dir\flags.make
CMakeFiles\Lesson01.dir\src\Lesson01.c.obj: CMakeFiles\Lesson01.dir\includes_C.rsp
CMakeFiles\Lesson01.dir\src\Lesson01.c.obj: C:\src\OpenGL\NeHe_Lesson01-master\src\Lesson01.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\src\OpenGL\NeHe_Lesson01-master\build.cmake\BC55\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Lesson01.dir/src/Lesson01.c.obj"
	C:\BCC55\bin\bcc32.exe -tWR -tW- -DWIN32 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -oCMakeFiles\Lesson01.dir\src\Lesson01.c.obj -c C:\src\OpenGL\NeHe_Lesson01-master\src\Lesson01.c

CMakeFiles\Lesson01.dir\src\Lesson01.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lesson01.dir/src/Lesson01.c.i"
	cpp32 -DWIN32 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -oCMakeFiles\Lesson01.dir\src\Lesson01.c.i -c C:\src\OpenGL\NeHe_Lesson01-master\src\Lesson01.c

CMakeFiles\Lesson01.dir\src\Lesson01.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lesson01.dir/src/Lesson01.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

# Object files for target Lesson01
Lesson01_OBJECTS = \
"CMakeFiles\Lesson01.dir\src\Lesson01.c.obj"

# External object files for target Lesson01
Lesson01_EXTERNAL_OBJECTS =

C:\src\OpenGL\NeHe_Lesson01-master\binBC55\Debug\Lesson01.exe: CMakeFiles\Lesson01.dir\src\Lesson01.c.obj
C:\src\OpenGL\NeHe_Lesson01-master\binBC55\Debug\Lesson01.exe: CMakeFiles\Lesson01.dir\build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\src\OpenGL\NeHe_Lesson01-master\build.cmake\BC55\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable C:\src\OpenGL\NeHe_Lesson01-master\binBC55\Debug\Lesson01.exe"
	C:\BCC55\bin\bcc32.exe -tWR -tW- -eC:\src\OpenGL\NeHe_Lesson01-master\binBC55\Debug\Lesson01.exe -tWM -lS:1048576 -lSc:4098 -lH:1048576 -lHc:8192 -v -tW  -c -tWM- -w -w-par -w-inl -W -a1 -D_WIN32  -Od -DDEBUG -D_DEBUG @&&|
   -LC:\BCC55\lib  -LC:\BCC55\lib\PSDK  import32.lib glu32.lib opengl32.lib user32.lib advapi32.lib comdlg32.lib winmm.lib gdi32.lib shell32.lib kernel32.lib cw32.lib import32.lib  $(Lesson01_OBJECTS) $(Lesson01_EXTERNAL_OBJECTS)
|

# Rule to build all files generated by this target.
CMakeFiles\Lesson01.dir\build: C:\src\OpenGL\NeHe_Lesson01-master\binBC55\Debug\Lesson01.exe
.PHONY : CMakeFiles\Lesson01.dir\build

CMakeFiles\Lesson01.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Lesson01.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Lesson01.dir\clean

CMakeFiles\Lesson01.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "Borland Makefiles" C:\src\OpenGL\NeHe_Lesson01-master C:\src\OpenGL\NeHe_Lesson01-master C:\src\OpenGL\NeHe_Lesson01-master\build.cmake\BC55\Debug C:\src\OpenGL\NeHe_Lesson01-master\build.cmake\BC55\Debug C:\src\OpenGL\NeHe_Lesson01-master\build.cmake\BC55\Debug\CMakeFiles\Lesson01.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\Lesson01.dir\depend
