INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_CUSTOM_GUI custom_gui)

FIND_PATH(
    CUSTOM_GUI_INCLUDE_DIRS
    NAMES custom_gui/api.h
    HINTS $ENV{CUSTOM_GUI_DIR}/include
        ${PC_CUSTOM_GUI_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    CUSTOM_GUI_LIBRARIES
    NAMES gnuradio-custom_gui
    HINTS $ENV{CUSTOM_GUI_DIR}/lib
        ${PC_CUSTOM_GUI_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/custom_guiTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CUSTOM_GUI DEFAULT_MSG CUSTOM_GUI_LIBRARIES CUSTOM_GUI_INCLUDE_DIRS)
MARK_AS_ADVANCED(CUSTOM_GUI_LIBRARIES CUSTOM_GUI_INCLUDE_DIRS)
