# nicFW 880 ALPHA 18a

**Date:** September 1

## !! IMPORTANT !! This firmware DOES NOT SUPPORT The iRadio UV-98 (Plus) !!

The iRadio UV98 (Plus) is NOT THE SAME as the Radtel RT-880(G), there are differences.

At the current time I do not have a UV-98 so it's impossible for me to support the model. I have one on order, but until then no support for the iRadio UV-98 can be given.

---

Here is the ALPHA 18 release of nicFW 880! This update brings improvements to the Si4732 tuner module and introduces an all-new spectrum scope in normal radio mode.

There are a few more fonts in the extras folder as well as the updated skins.

## New Features

- **Experimental AM TX** (let me know how it performs)
- Introduced **Squelch Tail setting**. Check [HERE] for overview of squelch settings.

## 🔧 Updates to the Si4732 Module

- Variable bandwidth control
- Signal meter toggle (disabling can reduce noise on certain frequencies)
- Powerline filter implemented
- Screen timeout now functions

### Key shortcuts:

- **LP-5:** Enable/disable signal meter
- **LP-8:** Enable/disable powerline filter
- **LP-9:** Toggle bandwidth (6/4/3/2/1 kHz)
- **SP-EMG:** Toggle Day/Night

## 📡 New Spectrum Scope

The spectrum scope adds a way to visualize signals across a range. By default, it launches with **LP-2** (configurable).

When opened, it:
- Centers on your currently active VFO frequency
- Uses your current step, modulation, and bandwidth settings
- Displays across a 60-bar wide scope

### Display:

The upper part of the display will show like a regular VFO and will display the current center frequency, bandwidth, step, strongest signal, modulation and scope width.

### Scope controls:

- **SP-0/9:** Enter new center frequency
- **SP-RED:** Exit monitor mode / Exit scope
- **SP-#:** Center scope on the strongest signal
- **SP-Up/Down:** Shift center frequency by current step
- **SP-S1:** Monitor center frequency
- **SP-S2:** Monitor strongest signal frequency
- **LP-#:** Toggle scope width (15/30/60/120 bars)
- **LP-\*:** Enter new frequency step

## IMPORTANT NOTE ABOUT THE SPECTRUM SCOPE

**THE SPECTRUM SCOPE IS NOT A SCANNER.**

THE RADIO IS **INCAPABLE** OF LISTENING TO A SIGNAL AND SCANNING FOR OTHERS AT THE SAME TIME. I.E. IT CANNOT CONTINUE DRAWING THE SCOPE WHILE LISTENING TO A SIGNAL.

THE SCOPE HAS TO **STOP** TO LISTEN TO A SIGNAL, SO IF IT AUTOMATICALLY STOPPED ON EVERY SIGNAL WHAT PURPOSE IS IT SERVING?

I'LL TELL YOU, IT'S ACTING AS A SIMPLE SCANNER, AND A SLOW ONE WITH LIMITED RANGE, I.E. USELESS. THE SCOPE WOULD BE COMPLETELY POINTLESS AS IT COULD ONLY EVER DISPLAY ONE DETECTED SIGNAL, EVERYTHING ELSE WOULD BE NOISE, WHICH TOTALLY DEFEATS ITS PURPOSE.

**!!SO IF YOU WANT TO SCAN, RUN A REGULAR SCAN!!**
