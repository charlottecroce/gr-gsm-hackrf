#!/usr/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/charlotte/gr-gsm/python/gsm
export GR_CONF_CONTROLPORT_ON=False
export CMAKE_BINARY_DIR=/home/charlotte/gr-gsm/build
export PATH="/home/charlotte/gr-gsm/build/python/gsm":"$PATH"
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/charlotte/gr-gsm/build/test_modules:$PYTHONPATH
/usr/bin/python3 /home/charlotte/gr-gsm/python/gsm/qa_tch_h_chans_demapper.py 
