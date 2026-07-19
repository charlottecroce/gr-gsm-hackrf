# gr-gsm-hackrf Patch Notes

The following documents changes made to gr-gsm's SDR-facing tools to fix gain-stage handling on HackRF.

## Main bug fix

`osmosdr.source` exposes three generic gain fields: `gain`, `if_gain`,
`bb_gain`, that map to different physical stages depending on the SDR
backend. gr-gsm's stock scripts were written with RTL-SDR's single-gain
model in mind. On HackRF, the real mapping (confirmed against
gr-osmosdr's `hackrf_source_c.cc`) is:

| osmosdr field | HackRF stage | Valid range | Risk |
|---|---|---|---|
| `gain` / `gain0` | Front-end RF amp (on/off) | 0 or 14dB only | Yes — enabling this drops HackRF's safe max RX input from +10dBm to -5dBm. Exceeding that can permanently damage the receiver front end. |
| `if_gain` / `if_gain0` | LNA | 0–40dB, 8dB steps | No |
| `bb_gain` / `bb_gain0` | VGA (baseband) | 0–62dB, 2dB steps | No |

Every stock script wired a slider/CLI flag with an RTL-SDR-style
continuous range straight into `gain`/`gain0` -- the AMP stage. Since AMP
only accepts 0 or 14, any value above ~7 gets clipped to 14
(**on**), with no warning. Meanwhile `if_gain`/`bb_gain` (the actually-safe
stages you'd want to tune) were hardcoded with no CLI/UI exposure at all.

## Files patched


### `grgsm_livemon.grc` / `grgsm_livemon_headless.grc`

  (0–40dB, 8dB steps) and wired it to `if_gain0` (the real LNA stage).
- Added a new **`vga_gain`** parameter/slider (0–62dB, 2dB steps),
  wired to `bb_gain0` (the real VGA stage), previously hardcoded to
  `20` with no control.
- Added a new **`amp_enable`** parameter/slider, locked to 0 or 14 only,
  defaulting to **0 (off)**, wired to `gain0` (the real AMP stage).
  Its label/comment carries the danger warning directly in the GUI.
- `args` (device selection) simplified to a **plain passthrough** to
  `osmosdr.source()` instead of going through
  `grgsm.device.get_default_args()`. That wrapper probes every
  osmosdr-supported backend on every launch and has known crash bugs
  on some hardware (`'osmosdr.osmosdr_python.device_t is not iterable - see gr-gsm issues #636, #624`). An empty `args`
  string still lets osmosdr auto-detect the (only) device present.

### `grgsm_scanner`

- Same `lna_gain` / `vga_gain` / `amp_enable` split as above, exposed as
  `-g/--lna-gain` (default 16), `-v/--vga-gain` (default 20), and
  `--amp` (flag, default off, prints a runtime warning if set).
- `set_gain_mode(False, 0)` kept explicit. HackRF has no hardware AGC.
- `--args` restored as a plain passthrough (default empty string), same
  reasoning as above, no `get_default_args` wrapper.
- `-l/--list-devices` unchanged.

### `grgsm_capture`

- Constructor changed from a single `gain` param to
  `lna_gain=16`, `vga_gain=20`, `amp_enable=False`.
- CLI: `-g/--lna-gain`, `-v/--vga-gain`, `--amp` (flag, off by default,
  prints a warning if set). Help text explains the HackRF-specific
  danger directly on `-g`'s description since this script's flag names
  are shared with any non-HackRF use.
- `set_gain_mode(True, 0)` -> `set_gain_mode(False, 0)`. The original
  requested hardware AGC, which HackRF doesn't support.
- `--args` kept as a plain passthrough (default empty), no
  `get_default_args` wrapper.

## New usage (all three CLI tools)

```
-g / --lna-gain     LNA gain, 0-40dB, 8dB steps. Safe to adjust freely. [default: 16]
-v / --vga-gain      VGA (baseband) gain, 0-62dB, 2dB steps. Safe to adjust freely. [default: 20]
--amp                Enable the front-end RF amp. OFF by default.
                      CAUTION: drops safe max RX input from +10dBm to -5dBm.
--args               Extra osmosdr device args, passed straight through. [default: ""]
-l / --list-devices  List available SDR devices.
```


Only add `--amp` if `-g`/`-v` maxed out still isn't enough, and never near a known strong
transmitter without an inline attenuator.

***

**End of Patch Notes**

***

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

*Vadim Yanitskiy* \<axilirator (at) gmail.com\> - control and data interface for the transceiver, grgsm_trx application

*Vasil Velichkov* \<vvvelichkov (at) gmail.com\> - automatic compilation of grc applications, fixes and user support

*Pieter Robyns* \<pieter.robyns (at) uhasselt.be\> - block reversing channel hopping


Thanks
======
This work is built upon the efforts made by many people to gather knowledge of GSM. 

First very significant effort of public research into GSM and its security vulnerabilities was The Hacker's Choice GSM SCANNER PROJECT. One of the results of this project was creation of a software GSM receiver by *Tvoid* - *gsm-tvoid* - which was  was the most important predecessor of *gr-gsm* and of *gsm-receiver* from the *Airprobe* project.

*Gr-gsm* wouldn't be also possible without help and inspiration by Harald Welte, Dieter Spaar and Sylvain Munaut.

Special thanks to Pawel Koszut who generously lent his USRP1 to the author of *gr-gsm* (Piotr Krysik) in 2007-2010.
