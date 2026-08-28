# Install script for directory: /home/charlotte/gr-gsm/python/gsm/trx

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/dist-packages/gnuradio/gsm/trx" TYPE FILE FILES
    "/home/charlotte/gr-gsm/python/gsm/trx/__init__.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/udp_link.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/ctrl_if.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/ctrl_if_bb.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/radio_if.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/radio_if_uhd.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/radio_if_lms.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/transceiver.py"
    "/home/charlotte/gr-gsm/python/gsm/trx/dict_toggle_sign.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/dist-packages/gnuradio/gsm/trx" TYPE FILE FILES
    "/home/charlotte/gr-gsm/build/python/gsm/trx/__init__.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/udp_link.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/ctrl_if.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/ctrl_if_bb.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/radio_if.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/radio_if_uhd.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/radio_if_lms.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/transceiver.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/dict_toggle_sign.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/__init__.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/udp_link.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/ctrl_if.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/ctrl_if_bb.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/radio_if.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/radio_if_uhd.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/radio_if_lms.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/transceiver.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/trx/dict_toggle_sign.pyo"
    )
endif()

