# Install script for directory: /home/charlotte/gr-gsm/python/gsm/receiver

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/dist-packages/gnuradio/gsm" TYPE FILE FILES
    "/home/charlotte/gr-gsm/python/gsm/receiver/gsm_input.py"
    "/home/charlotte/gr-gsm/python/gsm/receiver/fcch_burst_tagger.py"
    "/home/charlotte/gr-gsm/python/gsm/receiver/sch_detector.py"
    "/home/charlotte/gr-gsm/python/gsm/receiver/fcch_detector.py"
    "/home/charlotte/gr-gsm/python/gsm/receiver/chirpz.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/dist-packages/gnuradio/gsm" TYPE FILE FILES
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/gsm_input.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/fcch_burst_tagger.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/sch_detector.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/fcch_detector.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/chirpz.pyc"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/gsm_input.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/fcch_burst_tagger.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/sch_detector.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/fcch_detector.pyo"
    "/home/charlotte/gr-gsm/build/python/gsm/receiver/chirpz.pyo"
    )
endif()

