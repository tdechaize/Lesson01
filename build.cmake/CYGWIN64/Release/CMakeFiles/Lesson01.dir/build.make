# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/src/OpenGL/NeHe_Lesson01-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release

# Include any dependencies generated for this target.
include CMakeFiles/Lesson01.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lesson01.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lesson01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lesson01.dir/flags.make

CMakeFiles/Lesson01.dir/src/Lesson01.c.o: CMakeFiles/Lesson01.dir/flags.make
CMakeFiles/Lesson01.dir/src/Lesson01.c.o: C:/src/OpenGL/NeHe_Lesson01-master/src/Lesson01.c
CMakeFiles/Lesson01.dir/src/Lesson01.c.o: CMakeFiles/Lesson01.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Lesson01.dir/src/Lesson01.c.o"
	C:/cygwin64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Lesson01.dir/src/Lesson01.c.o -MF CMakeFiles/Lesson01.dir/src/Lesson01.c.o.d -o CMakeFiles/Lesson01.dir/src/Lesson01.c.o -c C:/src/OpenGL/NeHe_Lesson01-master/src/Lesson01.c

CMakeFiles/Lesson01.dir/src/Lesson01.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lesson01.dir/src/Lesson01.c.i"
	C:/cygwin64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/src/OpenGL/NeHe_Lesson01-master/src/Lesson01.c > CMakeFiles/Lesson01.dir/src/Lesson01.c.i

CMakeFiles/Lesson01.dir/src/Lesson01.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lesson01.dir/src/Lesson01.c.s"
	C:/cygwin64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/src/OpenGL/NeHe_Lesson01-master/src/Lesson01.c -o CMakeFiles/Lesson01.dir/src/Lesson01.c.s

CMakeFiles/Lesson01.dir/src/Lesson01.rc.res: CMakeFiles/Lesson01.dir/flags.make
CMakeFiles/Lesson01.dir/src/Lesson01.rc.res: C:/src/OpenGL/NeHe_Lesson01-master/src/Lesson01.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object CMakeFiles/Lesson01.dir/src/Lesson01.rc.res"
	x86_64-w64-mingw32-windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:/src/OpenGL/NeHe_Lesson01-master/src/Lesson01.rc CMakeFiles/Lesson01.dir/src/Lesson01.rc.res

# Object files for target Lesson01
Lesson01_OBJECTS = \
"CMakeFiles/Lesson01.dir/src/Lesson01.c.o" \
"CMakeFiles/Lesson01.dir/src/Lesson01.rc.res"

# External object files for target Lesson01
Lesson01_EXTERNAL_OBJECTS =

C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/Lesson01.exe: CMakeFiles/Lesson01.dir/src/Lesson01.c.o
C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/Lesson01.exe: CMakeFiles/Lesson01.dir/src/Lesson01.rc.res
C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/Lesson01.exe: CMakeFiles/Lesson01.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/Lesson01.exe"
	C:/cygwin64/bin/x86_64-w64-mingw32-gcc.exe  -m64 -D_WIN64  -O2 -s -DNDEBUG -Wl,--enable-auto-import $(Lesson01_OBJECTS) $(Lesson01_EXTERNAL_OBJECTS) -o C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/Lesson01.exe -Wl,--out-implib,C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/libLesson01.dll.a -Wl,--major-image-version,0,--minor-image-version,0   -LC:/cygwin64/usr/x86_64-w64-mingw32/sys-root/mingw/lib  -lglu32 -lopengl32 -luser32 -ladvapi32 -lcomdlg32 -lwinmm -lgdi32 -lshell32 -lkernel32 

# Rule to build all files generated by this target.
CMakeFiles/Lesson01.dir/build: C:/src/OpenGL/NeHe_Lesson01-master/binCYGWIN64/Release/Lesson01.exe
.PHONY : CMakeFiles/Lesson01.dir/build

CMakeFiles/Lesson01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lesson01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lesson01.dir/clean

CMakeFiles/Lesson01.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/src/OpenGL/NeHe_Lesson01-master C:/src/OpenGL/NeHe_Lesson01-master C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release C:/src/OpenGL/NeHe_Lesson01-master/build.cmake/CYGWIN64/Release/CMakeFiles/Lesson01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lesson01.dir/depend
