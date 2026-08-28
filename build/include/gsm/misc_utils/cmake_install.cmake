# Install script for directory: /home/charlotte/gr-gsm/include/gsm/misc_utils

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gsm/misc_utils" TYPE FILE FILES
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/bursts_printer.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/burst_file_source.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/burst_file_sink.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/collect_system_info.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/message_file_sink.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/message_file_source.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/extract_system_info.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/extract_immediate_assignment.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/extract_cmc.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/extract_assignment_cmd.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/controlled_rotator_cc.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/message_printer.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/tmsi_dumper.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/msg_to_tag.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/burst_to_fn_time.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/controlled_fractional_resampler_cc.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/time_spec.h"
    "/home/charlotte/gr-gsm/include/gsm/misc_utils/fn_time.h"
    )
endif()

