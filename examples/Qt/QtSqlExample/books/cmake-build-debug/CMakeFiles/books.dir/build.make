# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/tin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.4932.12/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/tin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.4932.12/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tin/Documents/Baze2Projekt/QtSqlExample/books

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/books.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/books.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/books.dir/flags.make

CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.o: CMakeFiles/books.dir/flags.make
CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.o: books_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.o -c /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/books_autogen/mocs_compilation.cpp

CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/books_autogen/mocs_compilation.cpp > CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.i

CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/books_autogen/mocs_compilation.cpp -o CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.s

CMakeFiles/books.dir/main.cpp.o: CMakeFiles/books.dir/flags.make
CMakeFiles/books.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/books.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/books.dir/main.cpp.o -c /home/tin/Documents/Baze2Projekt/QtSqlExample/books/main.cpp

CMakeFiles/books.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/books.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tin/Documents/Baze2Projekt/QtSqlExample/books/main.cpp > CMakeFiles/books.dir/main.cpp.i

CMakeFiles/books.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/books.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tin/Documents/Baze2Projekt/QtSqlExample/books/main.cpp -o CMakeFiles/books.dir/main.cpp.s

# Object files for target books
books_OBJECTS = \
"CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/books.dir/main.cpp.o"

# External object files for target books
books_EXTERNAL_OBJECTS =

books: CMakeFiles/books.dir/books_autogen/mocs_compilation.cpp.o
books: CMakeFiles/books.dir/main.cpp.o
books: CMakeFiles/books.dir/build.make
books: /usr/lib/libQt5Widgets.so.5.13.1
books: /usr/lib/libQt5Quick.so.5.13.1
books: /usr/lib/libQt5Gui.so.5.13.1
books: /usr/lib/libQt5Qml.so.5.13.1
books: /usr/lib/libQt5Network.so.5.13.1
books: /usr/lib/libQt5Core.so.5.13.1
books: CMakeFiles/books.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable books"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/books.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/books.dir/build: books

.PHONY : CMakeFiles/books.dir/build

CMakeFiles/books.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/books.dir/cmake_clean.cmake
.PHONY : CMakeFiles/books.dir/clean

CMakeFiles/books.dir/depend:
	cd /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tin/Documents/Baze2Projekt/QtSqlExample/books /home/tin/Documents/Baze2Projekt/QtSqlExample/books /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug /home/tin/Documents/Baze2Projekt/QtSqlExample/books/cmake-build-debug/CMakeFiles/books.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/books.dir/depend
