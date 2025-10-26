# nicFW 880 BETA 02 Release

## 🔢 DTMF Decoding

Decoded DTMF digits now temporarily replace the Group Name on screen.

The existing "DTMF" menu category has been expanded with additional options.

### Options include:

**Decoding**
- **Off** → No decoding
- **On** → Enable decoding only
- **P-ID** → Match heard sequences against presets and display their names

**Display For** → How long (in seconds) detected digits are shown

**SeqEnd Pause** → Pause (in seconds) after a detected digit, marking the end of a sequence

## ⚡ DTMF Preset Speed Dial

A new User Key function: **"DTMF Speed Dial"**

Assign this to a key, and long-pressing it will transmit the corresponding DTMF preset.

**Example:** If LP-2 is set to DTMF Speed Dial, holding 2 will transmit preset #2.

## 📻 Si4732 Tuner Module

New function selection menu added.

⚠️ **Important:** Key definitions for this module have changed.

### Short Press Keys

- **EMG** → Toggle Day/Night display
- **\* / #** → Adjust BFO
- **0–9** → Enter frequency
- **Up/Down** → Step VFO frequency / channel number / seek direction
- **Green** → Open Main Menu
- **S1** → Change Band
- **S2** → Change Modulation
- **Red** → Toggle VFO/Channel mode

### Long Press Keys

- **1 / 3** → Seek Down/Seek Up
- **2** → Reset BFO to 0
- **4** → Enter new frequency step
- **5** → Toggle S-Meter (reduces interference)
- **6** → Toggle squelch (WFM only)
- **7** → Enable/disable scope (>18 MHz, dual antennas required)
- **8** → Toggle power line filter
- **9** → Toggle AM bandwidth
- **Red** → Exit tuner mode
- **Green** → Function list selection menu

## 🛰️ GPS

A new User Key function: **"GPS"** has been added.

Currently, it's a diagnostic tool that displays:
- Latitude / Longitude / Altitude
- Satellite count
- Speed & heading
- Time

## nicFW880 BETA 02A, GPS Module Update 🚀

- GPS Compass mode
- Real Time Clock, check the "Time" menu category.
- Velocity can now be displayed in knots, mph, or kph

### Handy key controls when GPS is active:

- 🔴 **RED:** Exit GPS module
- #️⃣ **#:** Toggle raw data ↔ compass mode view
- ✴️ **\*:** Switch between cardinal rotation ↔ pointer rotation
- 9️⃣ **9:** Cycle through knots ↔ mph ↔ kph

## nicFW880 BETA 02B

- Fixed Settings saving problem.

## Coming soon 🌌

- GPS targets & tracking
- Save your current location as a target
- Transmit your location to another radio (via DTMF)
- Radar-style target blips
