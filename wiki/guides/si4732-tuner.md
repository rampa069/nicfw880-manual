# Si4732 Tuner Module Guide

## Overview

The Si4732 Tuner Module is a built-in broadcast/shortwave receiver that allows you to listen to FM, AM, SSB, and shortwave broadcasts.

**First introduced:** ALPHA 16 (FM only)
**Full band support:** ALPHA 17 (LW, MW, SW added)
**Latest updates:** BETA 02, BETA 03

⚠️ **IMPORTANT:** USB and LSB modes require SPI Flash restore process. See Installation section.

## Installation & Setup

### SPI Flash Restore (Required for USB/LSB)

You must follow the SPI Flash restore process for USB and LSB modes to operate correctly.

After restoring the SPI Flash:
1. Close the RMS
2. Reopen it

## Supported Bands

### FM
FM broadcast band

### LW (Longwave)
Long wave broadcasts

### MW (Mediumwave)
Medium wave / AM broadcast band

### SW (Shortwave)
Shortwave split into three bands:
- **SW1:** 1.7 – 6.0 MHz
- **SW2:** 6.0 – 12 MHz
- **SW3:** 12 – 30 MHz

## Activation

**Default key:** LP-8 (reassignable)

## Operation Modes

### VFO Mode
Manual frequency tuning and seeking.

### Channel Mode
Use preset channels/frequencies.

**Toggle:** LP-GREEN

## Key Controls

### Short Press (SP) Keys

#### ALPHA 16 / Early Versions:
- **SP-0 to 9:** Enter a new frequency
- **SP-Red:** Exit tuner / stop seeking
- **SP-#:** Seek forward
- **SP-\*:** Seek reverse
- **LP-#:** Toggle scope on/off
- **LP-\*:** Toggle muting (squelch) on/off

#### ALPHA 17+ / Current Versions:
- **SP-RED:** Exit tuner / stop seek
- **SP-GREEN:** Open Main Menu
- **SP-0–9:**
  - VFO Mode: Enter new frequency
  - Channel Mode: Enter new channel number
- **SP-\*:** Seek backward (VFO only)
- **SP-#:** Seek forward (VFO only)
- **SP-S1:** Change band (VFO only)
- **SP-S2:** Change modulation (VFO only)

#### BETA 02+ Updates:
- **SP-EMG:** Toggle Day/Night display
- **SP-\* / #:** Adjust BFO
- **SP-Up/Down:** Step VFO frequency / channel number / seek direction
- **SP-Green:** Open Main Menu
- **SP-S1:** Change Band
- **SP-S2:** Change Modulation
- **SP-Red:** Toggle VFO/Channel mode

### Long Press (LP) Keys

#### ALPHA 17:
- **LP-GREEN:** Toggle VFO/Channel modes
- **LP-1:** Enter new frequency step
- **LP-2:** Toggle BFO adjust mode
- **LP-3:** Reset BFO to zero
- **LP-#:** Toggle scope on/off
- **LP-\*:** Toggle squelch/muting on/off (Only advised for FM mode)

#### ALPHA 18a / BETA 02+:
- **LP-1 / 3:** Seek Down / Seek Up
- **LP-2:** Reset BFO to 0
- **LP-4:** Enter new frequency step
- **LP-5:** Toggle S-Meter (reduces interference)
- **LP-6:** Toggle squelch (WFM only)
- **LP-7:** Enable/disable scope (>18 MHz, dual antennas required)
- **LP-8:** Toggle power line filter
- **LP-9:** Toggle AM bandwidth (6/4/3/2/1 kHz) or AM bandwidth toggle
- **LP-Red:** Exit tuner mode
- **LP-Green:** Function list selection menu

⚠️ **Note:** Key bindings have evolved across versions. Latest bindings (BETA 02+) are listed above.

## Features

### BFO (Beat Frequency Oscillator)
For SSB (USB/LSB) and CW reception.

**Controls:**
- **SP-\* / #:** Adjust BFO (BETA 02+)
- **LP-2:** Toggle BFO adjust mode (ALPHA 17)
- **LP-3:** Reset BFO to zero

**ALPHA 17a Fix:** BFO adjustment now works in channel mode.

### Bandwidth Control (ALPHA 18a+)

Variable bandwidth for AM reception.

**Options:** 6 / 4 / 3 / 2 / 1 kHz

**Control:** LP-9

### Signal Meter (ALPHA 18a+)

Display signal strength. Can be disabled to reduce noise on certain frequencies.

**Control:** LP-5 (Enable/disable)

### Powerline Filter (ALPHA 18a+)

Reduces interference from power lines.

**Control:** LP-8 (Toggle)

### Squelch/Muting

Silence audio when no signal present.

**Control:** LP-6 (WFM only, BETA 02+) or LP-\* (earlier versions)

⚠️ **Note:** Only advised for FM mode.

### Scope (ALPHA 17+)

Visual spectrum display in tuner mode.

**Activation:** LP-# or LP-7 (version dependent)

**Requirements (BETA 02):**
- Frequency >18 MHz
- Dual antennas required

**ALPHA 3C Fix:** SP-Red now stops seeking in tuner mode.

### Screen Timeout (ALPHA 18a+)

Screen timeout now functions in tuner mode.

## Presets (ALPHA 17+)

Store favorite stations for quick access.

### Creating/Editing Presets

**Method 1: RMS App**
- Use RMS → Tuner Presets
- Band information is inferred from frequency (no need to specify)

**Method 2: CMS Menu (On Radio)**
- Navigate to CMS menu
- Presets stored/numbered like regular channel slots

**Note:** Tuner Presets in the RMS do not need any band information. The band is inferred from the frequency.

## HT Monitor in Tuner Mode (BETA 03+)

If Multiwatch is enabled and VFOs don't mix HF and VHF/UHF frequencies and scope is disabled:

- Any received signal on one of the three VFOs will temporarily interrupt the tuner
- Switches back to HT mode
- After the configured MW Pause, Si4732 mode resumes automatically

## Function Menu (BETA 02+)

**Access:** LP-GREEN

Opens function list selection menu for quick access to tuner features.

## Modulation Types

Supported modulations (version dependent):
- **FM** (WFM - Wide FM)
- **AM**
- **USB** (Upper Sideband) - requires SPI Flash restore
- **LSB** (Lower Sideband) - requires SPI Flash restore
- **CW** (Continuous Wave) - fixed in ALPHA 17a

## Troubleshooting

### USB/LSB Not Working
**Solution:** Follow SPI Flash restore process. Close and reopen RMS after restore.

### Signal Meter Causing Noise
**Solution:** Disable signal meter with LP-5

### Power Line Interference
**Solution:** Enable powerline filter with LP-8

### CW Mode Issues
**Fixed in:** ALPHA 17a

### Seeking Doesn't Stop
**Fixed in:** ALPHA 3C (SP-Red stops seeking)

### Speaker Muted
**Fixed in:** BETA 04A (Si4732 tuner mode speaker muting)

## Speaker/Amplifier Power (BETA 3C+)

Speaker/Amplifier powers down after 10 seconds of inactivity to save battery.

## Version History

- **ALPHA 16:** Initial FM tuner release
- **ALPHA 17:** LW, MW, SW bands added, presets, BFO
- **ALPHA 17a:** CW mode fix, BFO in channel mode
- **ALPHA 18a:** Bandwidth control, S-meter toggle, powerline filter, screen timeout
- **BETA 02:** Function menu, updated key controls
- **BETA 03:** HT Monitor integration with Multiwatch
- **BETA 04A:** Speaker muting fix
- **BETA 05F/05G:** Tuner mode scanning improvements
