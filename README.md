from this fork:

git clone -b maint-3.10 https://github.com/bkerler/gr-gsm.git

```
sudo apt-get update && \
sudo apt-get install -y \
    cmake \
    autoconf \
    libtool \
    pkg-config \
    build-essential \
    python-docutils \
    libcppunit-dev \
    swig \
    doxygen \
    liblog4cpp5-dev \
    python-scipy \
    python-gtk2 \
    gnuradio-dev \
    gr-osmosdr \
    libosmocore-dev \
    pybind11-dev \
    python3-pygccxml \
    python3-docutils

cd ~
git clone -b  https://github.com/charlottecroce/gr-gsm-hackrf
cd gr-gsm-hackrf && mkdir build && cd build
cmake .. && make -j$(nproc) && sudo make install && sudo ldconfig


sudo apt install hackrf                # gets hackrf tools
sudo usermod -aG plugdev $USER         # log out/in for it to take effect


hackrf_info                            # should print hardeware info


```

usage

```
# Default gains (LNA 16, VGA 20, amp off)
grgsm_scanner -b GSM900

# Weak/distant cells: push LNA and VGA up, still no amp
grgsm_scanner -b GSM900 -g 40 -v 40

# Very weak signal, last resort, enable the front-end amp
# (prints the -5 dBm warning to stderr)
grgsm_scanner -b GSM900 -g 40 -v 40 --amp

# Verbose cell info now needs the long flag (-v is vga-gain)
grgsm_scanner -b GSM900 --verbose



# Default gains
grgsm_livemon_headless -f 947.4M

# Turn the knobs (LNA 0-40 step 8, VGA 0-62 step 2)
grgsm_livemon_headless -f 947.4M -g 32 -v 30

# Amp on: note this is a value, not a flag
grgsm_livemon_headless -f 947.4M -g 40 -v 40 --amp-enable 1

Watch the decoded output in a second terminal with sudo tcpdump -i lo -nn port 4729, or Wireshark filtered on gsmtap

# Default gains, 10-second capture
grgsm_capture -f 947.4M -T 10 capture.cfile

# Custom gains
grgsm_capture -f 947.4M -g 24 -v 30 -T 10 capture.cfile

# By ARFCN instead of frequency, amp on
grgsm_capture -a 40 -g 40 -v 40 --amp -T 10 capture.cfile
```



The gr-gsm project 
==================
The *gr-gsm* project is based on the *gsm-receiver* written by Piotr Krysik (also the main author of *gr-gsm*) for the *Airprobe* project.

The aim is to provide set of tools for receiving information transmitted by GSM equipment/devices.

Installation and usage
======================
Please see project's [wiki](https://osmocom.org/projects/gr-gsm/wiki/index) for information on [installation](https://osmocom.org/projects/gr-gsm/wiki/Installation) and [usage](https://github.com/ptrkrysik/gr-gsm/wiki/Usage) of gr-gsm.

Mailing list
============
Current gr-gsm project's mailing list address is following:

gr-gsm@googlegroups.com

Mailing list is a place for general discussions, questions about the usage and installation. In case of problem with installation please try to provide full information that will help reproducing it. Minimum information should contain:
- operating system with version,
- kind of installation (how gr-gsm and its dependencies were installed: with pybombs, from distibution's repository, compiled manually)
- version of gnuradio (it can be obtained with: gnuradio-companion --version)
- error messages (in case of pybombs installation they can be obtained after switching it to verbous mode with -v option).

To join the group with any e-mail address, use this link:

<https://groups.google.com/forum/#!forum/gr-gsm/join>

Development
===========
New features are accepted through github's pull requests. When creating pull request try to make it adress one topic (addition of a feature x, correction of bug y).

If you wish to develop something for gr-gsm but don't know exactly what, then look for issues with label "Enhancement". Select one that you feel you are able to complete. After that claim it by commenting in the comment section of the issue. If there is any additional information about gr-gsm needed by you to make completing the task easier - just ask.

Videos
======
Short presentation of *Airprobe*'like application of *gr-gsm*:

<https://www.youtube.com/watch?v=Eofnb7zr8QE>

Credits
=======
*Piotr Krysik* \<ptrkrysik (at) gmail.com\> - main author and project maintainer

*Roman Khassraf* \<rkhassraf (at) gmail.com\> - blocks for demultiplexing and decoding of voice channels,  decryption block supporting all ciphers used in GSM, blocks for storing and reading GSM bursts, project planning and user support

*Vadim Yanitskiy* \<axilirator (at) gmail.com\> - control and data interface for the transceiver, gsm_trx application

*Vasil Velichkov* \<vvvelichkov (at) gmail.com\> - automatic compilation of grc applications, fixes and user support

*Pieter Robyns* \<pieter.robyns (at) uhasselt.be\> - block reversing channel hopping


Thanks
======
This work is built upon the efforts made by many people to gather knowledge of GSM. 

First very significant effort of public research into GSM and its security vulnerabilities was The Hacker's Choice GSM SCANNER PROJECT. One of the results of this project was creation of a software GSM receiver by *Tvoid* - *gsm-tvoid* - which was  was the most important predecessor of *gr-gsm* and of *gsm-receiver* from the *Airprobe* project.

*Gr-gsm* wouldn't be also possible without help and inspiration by Harald Welte, Dieter Spaar and Sylvain Munaut.

Special thanks to Pawel Koszut who generously lent his USRP1 to the author of *gr-gsm* (Piotr Krysik) in 2007-2010.
