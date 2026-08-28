# Install script for directory: /home/charlotte/gr-gsm/include/gsm

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gsm" TYPE FILE FILES
    "/home/charlotte/gr-gsm/include/gsm/plotting.h"
    "/home/charlotte/gr-gsm/include/gsm/api.h"
    "/home/charlotte/gr-gsm/include/gsm/gsmtap.h"
    "/home/charlotte/gr-gsm/include/gsm/constants.h"
    "/home/charlotte/gr-gsm/include/gsm/gsm_constants.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/charlotte/gr-gsm/build/include/gsm/decoding/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/decryption/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/demapping/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/receiver/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/misc_utils/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/qa_utils/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/flow_control/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/transmitter/cmake_install.cmake")
  include("/home/charlotte/gr-gsm/build/include/gsm/trx/cmake_install.cmake")

endif()

