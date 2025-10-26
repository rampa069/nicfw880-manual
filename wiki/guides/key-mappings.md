# Key Mappings & Controls Guide

## Overview

This guide consolidates all key mappings across different modes in nicFW880. Key functions have evolved across versions, so the latest mappings are provided.

**Note:** Some keys are configurable via User Key functions. Default assignments are listed.

## Normal Radio Mode

### Short Press (SP) Keys

- **0–9:** Enter frequency/channel number
- **\*:** Various functions (mode-dependent)
- **#:** Various functions (mode-dependent)
- **UP / DOWN:** Change frequency, navigate menus
- **GREEN:** Confirm, Open Main Menu
- **RED:** Cancel, Back
- **S1:** Side button 1 (configurable)
- **S2:** Side button 2 (configurable)
- **EMG:** Emergency/Function button - Toggle Day/Night mode (ALPHA 13+)
- **PTT:** Push to talk

### Long Press (LP) Keys

**Default User Key Functions:**

- **LP-1:** Scan Presets (ALPHA 19+) - configurable
- **LP-2:** Spectrum Scope (ALPHA 18a+) - configurable
- **LP-7:** Frequency Counter (ALPHA 13+)
- **LP-8:** Si4732 Tuner Module (ALPHA 16+) - reassignable
- **LP-GREEN:** Function Menu (ALPHA 15+)
- **LP-EMG:** Crossband Repeater (ALPHA 13)

**Other Long Press Functions:**
- **LP-RED:** Set waypoint as current location (when browsing waypoints, BETA 04E+)

## GPS Module Mode

### Short Press (SP) in GPS

- **SP-GREEN:** Open main menu
- **SP-#:** Toggle Data Mode / Tracker Mode
- **SP-\*:** Switch compass rotation mode
- **SP-6:** Open "Heard Beacons" list (APRS, BETA 04F+)
- **SP-7:** Open waypoint selection
- **SP-9:** Toggle units (Imperial, Nautical, Metric)
- **SP-RED:** Exit GPS module

### Long Press (LP) in GPS

- **LP-GREEN:** GPS function menu
- **LP-1:** Set tracking radius / Edit Latitude degrees (in waypoint menu, BETA 04A+)
- **LP-2:** Edit Longitude degrees (in waypoint menu, BETA 04A+)
- **LP-4:** Set target to current location / Change Latitude sign (BETA 04A+)
- **LP-5:** Clear target / Change Longitude sign (BETA 04A+)

### PTT in GPS (BETA 04A+)

- **PTT + S2:** Transmit GPS location via DTMF

## Si4732 Tuner Module

### Short Press (SP) in Tuner (BETA 02+)

- **SP-EMG:** Toggle Day/Night display
- **SP-\* / #:** Adjust BFO
- **SP-0–9:** Enter frequency (VFO) or channel number (Channel mode)
- **SP-Up/Down:** Step VFO frequency / channel number / seek direction
- **SP-Green:** Open Main Menu
- **SP-S1:** Change Band
- **SP-S2:** Change Modulation
- **SP-Red:** Toggle VFO/Channel mode
- **SP-\*:** Seek backward (VFO only)
- **SP-#:** Seek forward (VFO only)

### Long Press (LP) in Tuner (BETA 02+)

- **LP-1 / 3:** Seek Down / Seek Up
- **LP-2:** Reset BFO to 0
- **LP-4:** Enter new frequency step
- **LP-5:** Toggle S-Meter (reduces interference)
- **LP-6:** Toggle squelch (WFM only)
- **LP-7:** Enable/disable scope (>18 MHz, dual antennas required)
- **LP-8:** Toggle power line filter
- **LP-9:** Toggle AM bandwidth (6/4/3/2/1 kHz)
- **LP-Red:** Exit tuner mode
- **LP-Green:** Function list selection menu

## Spectrum Scope Mode

### Short Press (SP) in Scope

- **SP-0 / SP-9:** Enter new center frequency
- **SP-RED:** Exit monitor mode / Exit scope
- **SP-#:** Center scope on strongest signal / Exclude frequency (in monitor mode, BETA 05G+)
- **SP-Up / SP-Down:** Shift center frequency by current step
- **SP-S1:** Monitor center frequency
- **SP-S2:** Monitor strongest signal frequency
- **SP-GREEN:** Open Main Menu (BETA 05F+)
- **PTT:** Exit scope and remain on monitored frequency (BETA 05G+)

### Long Press (LP) in Scope (BETA 05F+)

- **LP-GREEN:** Open scope function menu
- **LP-0 to 9:** Set monitor trigger level (LP-0 = Disable)
- **LP-#:** Toggle scope width (15/30/60/120 bars)
- **LP-\*:** Enter new frequency step
- **LP-S1:** FM modulation
- **LP-S2:** AM modulation
- **LP-EMG:** DSB modulation

## DTMF Preset Menu

### In DTMF Preset Menu (BETA 01+)

**Opening:** SP-S2 (default, configurable)

- **Up / Down:** Browse presets
- **0–9:** Jump to preset number
- **Red:** Exit menu
- **Green / PTT:** Select and begin transmitting
- **Long Press Green:** Edit DTMF preset name

### Editing DTMF Digits

- **0–9:** Enter digits 0–9
- **Green:** Enter DTMF digit A
- **Up:** Enter DTMF digit B
- **Down:** Enter DTMF digit C
- **Red:** Enter DTMF digit D
- **\*, #:** Enter Star (*) and Hash (#)
- **PTT:** Confirm entry
- **S1:** Backspace
- **S2:** Abort entry

## Scan Preset Menu (ALPHA 19+)

**Opening:** LP-1 (default, configurable)

- **Up / Down:** Browse presets
- **0–9:** Jump to preset number
- **Green:** Start scanning
- **Long-press Green (LP-Green):** Edit preset name

## Remote Control Mode (RMS, BETA 05E+)

When using RMS Remote tab, keyboard/mouse controls the radio:

- **0–9** → 0–9
- **.** or **\*** → \*
- **Tab** or **#** → #
- **Enter** → Green
- **Escape** or **Backspace** → Red
- **Up** or **PageUp** → UP
- **Down** or **PageDown** → DOWN
- **Mouse Wheel** → UP & DOWN
- **F1** → S1
- **F2** → S2
- **F3** → EMG
- **Space** → PTT

## Crossband Repeater Mode (ALPHA 13)

**Activation:** Long-press EMG

### While Running:

- **RED:** Exit XB Repeater mode
- **STAR (\*):** Toggle screen on/off

## APRS Functions

### Manual APRS Beacon (BETA 04E+)

- **PTT + S1:** Send APRS location beacon (while PTT engaged)

### APRS Beacon List (BETA 04F+)

**In GPS module, SP-6 opens beacon list**

- **UP/DOWN:** Browse beacons
- **RED:** Exit list
- **GREEN:** Set beacon as target

## Function Menu (ALPHA 15+)

**Opening:** LP-GREEN (default)

Browse and select any user function to activate it.

Navigation:
- **Up / Down:** Browse functions
- **Green:** Activate selected function
- **Red:** Exit menu

## Special Functions

### Copy Channel to VFO (BETA 01+)

**In channel mode:** Long-press to copy selected channel to VFO

### Squelch Override

When active, signal bar shows **'OV'** instead of 'RX' (BETA 05D+)

Switching VFOs cancels squelch override (BETA 05D+)

### Settings Reset

**Hold EMG while powering on:**
- Performs settings reset
- Shows "DEFAULT SETTINGS" message
- Wait for red triangle to disappear

### Screen Brightness

**Short-press EMG:** Toggle Day/Night mode (ALPHA 13+)

Day and Night modes have individually adjustable brightness.

## User Key Assignment

Many long-press functions can be reassigned via the menu system:

**Assignable Functions:**
- Scan Presets
- Spectrum Scope
- DTMF Preset Menu
- DTMF Speed Dial
- DTMF Enter
- GPS Module
- Si4732 Tuner
- Frequency Counter
- Various other functions

**Configuration:** Check Main Menu → User Keys (or similar, exact path may vary)

## Tips for Key Usage

### Learning the Keys

1. **Start with basics:**
   - Short press: Immediate actions
   - Long press: Secondary functions, menus

2. **Mode-specific:**
   - Keys change function based on mode
   - GPS, Tuner, Scope have their own mappings

3. **Use Function Menu:**
   - LP-GREEN opens function menu
   - Browse all available functions
   - Don't need to remember every key

### Customization

- Reassign user keys to match your workflow
- Most-used functions on easy-to-reach keys
- Document your custom assignments

## Quick Reference Card

For a condensed listing of all shortcuts, see [Key Shortcuts Reference](../reference/key-shortcuts.md).

## Version History

Key mappings have evolved significantly across versions. This guide reflects the latest (BETA 05G) mappings. For version-specific information, see the [Changelog](../changelog/).
