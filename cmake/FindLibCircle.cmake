# - Try to find libdtcmp
# Once done this will define
#  LibCircle_FOUND - System has libdtcmp
#  LibCircle_INCLUDE_DIRS - The libdtcmp include directories
#  LibCircle_LIBRARIES - The libraries needed to use libdtcmp

FIND_PATH(WITH_LibCircle_PREFIX
    NAMES include/libcircle.h
)

FIND_LIBRARY(LibCircle_LIBRARIES
    NAMES circle
    HINTS ${WITH_LibCircle_PREFIX}/lib
)

FIND_PATH(LibCircle_INCLUDE_DIRS
    NAMES libcircle.h
    HINTS ${WITH_LibCircle_PREFIX}/include
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LibCircle DEFAULT_MSG
    LibCircle_LIBRARIES
    LibCircle_INCLUDE_DIRS
)

# Hide these vars from ccmake GUI
MARK_AS_ADVANCED(
	LibCircle_LIBRARIES
	LibCircle_INCLUDE_DIRS
)
