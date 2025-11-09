# ALPHA Releases Changelog

Complete version history from ALPHA 12 to ALPHA 19 (oldest to newest).

---

## ALPHA 12 (August 13)

### Main Feature: Configurable UI

The main thing about this release is the **configurable UI**. This took ages to do because there's so many things it needs to do.

### Changes
- Firmware tweaks and refinements
- Configurable UI system introduced
- Various bug fixes

**Note:** Due to sheer complexity, some issues were anticipated after release.

---

## ALPHA 13

### Manual DTMF & Repeater Tone

- Manually send DTMF tones
- Set custom repeater tone frequency
- Adjust repeater tone frequency in Advanced menu category

**Note:** DTMF presets not available yet (coming in future release)

### Crossband Repeater (Long-press EMG)

Allows relaying between VHF and UHF.

**Setup requirements:**
- VFO-A and VFO-B must be in simplex mode
- Both must be allowed to transmit
- One VFO on VHF, the other on UHF
- Squelch must be closed

**Controls while running:**
- Press RED to exit XB Repeater mode
- Press STAR to toggle screen on/off

### Screen Brightness Control

- Day/Night modes added
- Each with individually adjustable brightness
- Quick toggle: Short-press EMG to switch between Day and Night
- Or use menu to manually select

### Frequency Counter (Rapid Frequency Scanning) (Long-press 7)

Works similarly to previous models, now includes HF mode:

- **Started Over 70 MHz:** Scans for signals on both VHF and UHF
- **Started Under 70 MHz:** Attempts to scan for HF signals only (untested)

**Note:** This will wipe all channels, bandplans, skins and fonts. Back up to CSVs before flashing.

---

## ALPHA 14 (August 16)

⚠️ **The firmware DOES NOT support sub 300 serial number radios!!**

### Changes

- New startup logo
- Ton of tweaks, small requests and fixes reported from ALPHA 13

Main visible change is the startup logo. Not much else added visibly, but many behind-the-scenes improvements.

---

## ALPHA 15 (August 18)

⚠️ **The firmware DOES NOT support sub 300 serial number radios!!**

### Power Calibration

Default calibration setup present on starting RMS (based on developer's radio).

May need to fine tune for your own radio. Use earlier release diagnostic firmware to experiment with power settings (bias & gains).

https://www.patreon.com/posts/133266503?collection=1570664

### Roger Beep

"Yes yes I know, I said I wouldn't add such a thing. But this radio is going to be used by CBers, and they do like their Bleepy Bleeps."

### Timeout Dimming of LCD

- LCD will now timeout during scanning
- TX will now wake up the LCD

### AF Filters Added

Audio frequency filters implemented.

### Multiwatch VFO Switch

Determines if multiwatch will stay on the detected VFO or switch back after signal loss.

### Noise Gate Added

### Function Menu Added

**Default key:** LP-GREEN

Opens a menu allowing you to browse and select any user function and activate it.

### Key Beeps Added

"I know many don't use this but I do. I just like some feedback from pressing a key."

Menu option selects the frequency of the beep tone.

### Other Improvements

- Added right click menu to channels tab in RMS
- Fixed error of RX frequency disappearing on TX

---

## ALPHA 16 (FM Tuner Release)

⚠️ **The firmware DOES NOT support sub 300 serial number radios!!**

### Si4732-based FM Tuner! 🎶

The big highlight of this release is the new Si4732-based FM Tuner.

**Current support:** FM broadcast band only

**Coming soon:** SSB, AM, SW, MW, and LW

### Default Activation Key

**LP-8** (reassignable)

### In-Tuner Controls

- **SP-0 to 9:** Enter a new frequency
- **SP-Red:** Exit tuner / stop seeking
- **SP-#:** Seek forward
- **SP-\*:** Seek reverse
- **LP-#:** Toggle scope on/off
- **LP-\*:** Toggle muting (squelch) on/off

---

## ALPHA 17 (August 27)

⚠️ **The firmware DOES NOT support sub 300 serial number radios!!**

### IMPORTANT: SPI Flash Restore Required

You must follow the SPI Flash restore process.

USB and LSB modes in the Si4732 Tuner will not operate correctly without it.

**After restoring SPI Flash:** Close the RMS and reopen it.

### Squelch Hysteresis

- Defaults adjusted
- Split into ExNoise and RSSI settings
- Range limits extended to 20

### Si4732 Tuner Module Enhancements

- Now supports **LW, MW, and SW bands**
- Presets can be created/edited with RMS app or through CMS menu
- Presets stored/numbered just like regular channel slots

**Note:** Tuner Presets in RMS do not need band information. Band is inferred from frequency.

**Shortwave split into three bands:**
- **SW1:** 1.7 – 6.0 MHz
- **SW2:** 6.0 – 12 MHz
- **SW3:** 12 – 30 MHz

### Updated Controls

**Activation:** LP 8 → Enter Si4732 Tuner Module (reassignable)

**Short Press:**
- SP RED → Exit tuner / stop seek
- SP GREEN → Open Main Menu
- SP 0–9 → Enter frequency (VFO) or channel number (Channel)
- SP \* → Seek backward (VFO only)
- SP # → Seek forward (VFO only)
- SP S1 → Change band (VFO only)
- SP S2 → Change modulation (VFO only)

**Long Press:**
- LP GREEN → Toggle VFO/Channel modes
- LP 1 → Enter new frequency step
- LP 2 → Toggle BFO adjust mode
- LP 3 → Reset BFO to zero
- LP # → Toggle scope on/off
- LP \* → Toggle squelch/muting (Only advised for FM mode)

⚠️ **Note:** Key bindings not final, will be refined in future releases.

### ALPHA 17a Changes

- Fixed TX Frequency clearing for channel mode scanning
- Si4732 CW Mode fixed
- Si4732 BFO adjustment now works in channel mode

---

## ALPHA 18a (September 1)

### !! IMPORTANT !! This firmware DOES NOT SUPPORT The iRadio UV-98 (Plus) !!

The iRadio UV98 (Plus) is NOT THE SAME as the Radtel RT-880(G).

"At the current time I do not have a UV-98 so it's impossible for me to support the model. I have one on order, but until then no support for the iRadio UV-98 can be given."

### Experimental AM TX

Let developer know how it performs.

### Squelch Tail Setting

Introduced Squelch Tail setting.

### Si4732 Module Updates

- Variable bandwidth control
- Signal meter toggle (disabling can reduce noise on certain frequencies)
- Powerline filter implemented
- Screen timeout now functions

**Key shortcuts:**
- **LP-5:** Enable/disable signal meter
- **LP-8:** Enable/disable powerline filter
- **LP-9:** Toggle bandwidth (6/4/3/2/1 kHz)
- **SP-EMG:** Toggle Day/Night

### New Spectrum Scope 📡

Visualize signals across a range.

**Default launch:** LP-2 (configurable)

When opened:
- Centers on currently active VFO frequency
- Uses current step, modulation, and bandwidth settings
- Displays across 60-bar wide scope

**Display:** Upper part shows center frequency, bandwidth, step, strongest signal, modulation, and scope width.

**Scope controls:**
- **SP-0/9:** Enter new center frequency
- **SP-RED:** Exit monitor mode / Exit scope
- **SP-#:** Center scope on strongest signal
- **SP-Up/Down:** Shift center frequency by current step
- **SP-S1:** Monitor center frequency
- **SP-S2:** Monitor strongest signal frequency
- **LP-#:** Toggle scope width (15/30/60/120 bars)
- **LP-\*:** Enter new frequency step

### IMPORTANT NOTE ABOUT THE SPECTRUM SCOPE

**THE SPECTRUM SCOPE IS NOT A SCANNER.**

The radio is INCAPABLE of listening to a signal and scanning for others at the same time. The scope has to STOP to listen to a signal.

**!!SO IF YOU WANT TO SCAN, RUN A REGULAR SCAN!!**

### Other Updates

- More fonts in extras folder
- Updated skins

---

## ALPHA 19 (September 4)

### Scan Presets 🔑

Now supported with up to 99 presets.

**Default Activation Key:** LP-1 (can be reassigned)

**New "Scanning" menus:** Load, Delete, and Save presets

### How It Works

- In Scan Preset Menu, use Up/Down or 0–9 to pick a preset
- Press Green to start scanning
- Long-press Green (LP-Green) to edit preset name
- Also configurable in RMS → Scan Presets tab

👉 **Note:** Scan Preset menu only opens if you have at least one preset assigned and you're in VFO mode.

### Other Updates ⚡

- RMS can now load CHIRP CSVs
- Charging icon added
- Several BTS tweaks and bug fixes reported since 18a

### Known Limitation ⚠️

Long-press Scan Preset Menu action not added into RMS yet. If you want to reconfigure activation key, you'll need to do it directly on radio for now.

---

**End of ALPHA Releases**

The ALPHA development cycle concluded in September 2025, transitioning to [BETA Releases](beta-releases.md).

All features developed through ALPHA and BETA cycles were consolidated into **v5.08.01** - the first official stable release. See [Official Releases](releases.md) for details.
