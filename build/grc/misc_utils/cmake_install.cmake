# Install script for directory: /home/charlotte/gr-gsm/grc/misc_utils

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gnuradio/grc/blocks" TYPE FILE FILES
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_extract_system_info.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_extract_immediate_assignment.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_collect_system_info.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_extract_cmc.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_extract_assignment_cmd.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_controlled_rotator_cc.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_message_printer.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_bursts_printer.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_clock_offset_corrector_tagged.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_tmsi_dumper.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_burst_file_sink.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_burst_file_source.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_message_file_sink.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_message_file_source.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_msg_to_tag.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_controlled_fractional_resampler_cc.block.yml"
    "/home/charlotte/gr-gsm/grc/misc_utils/gsm_burst_to_fn_time.block.yml"
    )
endif()

