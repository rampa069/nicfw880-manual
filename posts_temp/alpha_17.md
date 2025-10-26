# nicFW880 ALPHA 17

**Date:** August 27

## !!The firmware DOES NOT support sub 300 serial number radios!!

## IMPORTANT:
You must follow the SPI Flash restore process [Here]

USB and LSB modes in the Si4732 Tuner will not operate correctly if you don't.

**After you have restored the SPI Flash, close the RMS and reopen it.**

---

Hey everyone!
Here is the ALPHA 17 release of nicFW880. This update brings some important refinements and new functionality, especially for the Si4732 Tuner Module.

## 🔧 Key Changes

### Squelch hysteresis
- Defaults adjusted
- Split into ExNoise and RSSI settings
- Range limits extended to 20

### Si4732 Tuner Module
- Now supports **LW, MW, and SW bands**
- Presets can be created/edited with the RMS app or through the CMS menu
- Presets are stored/numbered just like regular channel slots

**Note:** Tuner Presets in the RMS do not need any band information. The band is inferred from the frequency.

**Shortwave split into three bands:**
- **SW1** = 1.7 – 6.0 MHz
- **SW2** = 6.0 – 12 MHz
- **SW3** = 12 – 30 MHz

## 🎛 Controls & Operation

### Activation
- **LP 8** → Enter Si4732 Tuner Module (reassignable)

### Within the Tuner Module

**Short Press:**
- **SP RED** → Exit tuner / stop seek
- **SP GREEN** → Open Main Menu
- **SP 0–9** →
  - VFO Mode: Enter new frequency
  - Channel Mode: Enter new channel number
- **SP \*** → Seek backward (VFO only)
- **SP #** → Seek forward (VFO only)
- **SP S1** → Change band (VFO only)
- **SP S2** → Change modulation (VFO only)

**Long Press Functions:**
- **LP GREEN** → Toggle VFO/Channel modes
- **LP 1** → Enter new frequency step
- **LP 2** → Toggle BFO adjust mode
- **LP 3** → Reset BFO to zero
- **LP #** → Toggle scope on/off
- **LP \*** → Toggle squelch/muting on/off (Only advised for FM mode)

## ⚠️ Note
These key bindings are not final, I'll likely refine them in future releases to make things more intuitive.

Thanks as always for following along and testing out these early builds! Your feedback is super valuable in shaping the project.

## 17a changes:
- Fixed TX Frequency clearing for channel mode scanning.
- Si4732 CW Mode fixed.
- Si4732 BFO adjustment now work in channel mode.
