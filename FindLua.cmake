# Try to find lua
# Once done, this will define
#
# LUA_FOUND        - system has lua
# LUA_INCLUDE_DIRS - lua include directories
# LUA_LIBRARIES    - libraries need to use lua
# LUA_EXECUTABLE   - lua executable
# LUAC_EXECUTABLE  - luac bytecode compiler executable

find_path(
	LUA_INCLUDE_DIR
	NAMES lua.h
	PATHS ${CONAN_INCLUDE_DIRS_LUA}
)

find_library(
	LUA_LIBRARY
	NAMES lua
	PATHS ${CONAN_LIB_DIRS_LUA}
)

find_program(
	LUA_EXECUTABLE
	NAMES lua
	PATHS ${CONAN_BIN_DIRS_LUA}
)

find_program(
	LUAC_EXECUTABLE
	NAMES luac
	PATHS ${CONAN_BIN_DIRS_LUA}
)

set(LUA_FOUND TRUE)
set(LUA_INCLUDE_DIRS ${LUA_INCLUDE_DIR})
set(LUA_LIBRARIES ${LUA_LIBRARY})

mark_as_advanced(LUA_LIBRARY LUA_INCLUDE_DIR LUA_EXECUTABLE, LUAC_EXECUTABLE)
