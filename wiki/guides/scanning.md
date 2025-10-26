# Scanning Features Guide

## Overview

nicFW880 includes comprehensive scanning capabilities with support for scan presets, frequency exclusion, and various scan modes.

**Scan Presets introduced:** ALPHA 19
**Improved scanning speed:** BETA 01, BETA 05F/05G
**Latest updates:** BETA 05F/05G (Tuner mode scanning)

## Scan Presets (ALPHA 19+)

Store up to 99 scan preset configurations for quick access to frequently scanned ranges.

### Activation

**Default key:** LP-1 (can be reassigned)

**Requirements:**
- At least one preset must be assigned
- Must be in VFO mode

### Scan Preset Menu Controls

- **Up / Down:** Browse to next or previous preset
- **0–9:** Jump to specific preset number
- **Green:** Start scanning with selected preset
- **Long-press Green (LP-Green):** Edit preset name

### Managing Scan Presets

#### Creating/Saving Presets

**On Radio:**
1. Configure scan parameters (frequency range, step, modulation, bandwidth)
2. Main Menu → Scanning → Save
3. Choose a preset slot (1-99)

**In RMS:**
- RMS → Scan Presets tab
- Configure all parameters
- Save to slot

#### Deleting Presets

Main Menu → Scanning → Delete

#### Loading Presets

Main Menu → Scanning → Load

Or use LP-1 (default) to open Scan Preset Menu

### Preset Configuration

Each preset stores:
- Frequency range (start/end)
- Step size
- Modulation
- Bandwidth (BETA 3C+)

**BETA 3C Fix:** Automatic modulation and bandwidth for scan presets now works correctly.

## Scanning Speed

### Improvements

- **BETA 01:** Increased scanning speed
- **BETA 05F:** Tuner mode scanning speed improved

### Scan Control (BETA 05F+)

In tuner mode scanning:
- Scanning will not start until the user releases the LP key (LP1 or LP3)
- Scanning is paused while a key is pressed
- Helps avoid overruns when stopping scans

## LCD Timeout During Scanning (ALPHA 15+)

LCD will now timeout during scanning to save power.

**TX will wake up the LCD.**

## Frequency Exclusion/Ignore

Temporarily skip unwanted frequencies during scans.

### Excluding Frequencies

**During scan:** Press **#** while on unwanted frequency

**In Spectrum Scope monitor mode (BETA 05G):** Press **#** while monitoring

### Clear Ignores

**BETA 05G:** "Clear Ignores" function added to spectrum scope

Clears all excluded/ignored frequencies.

## Scan Modes

### VFO Scan
Scan between two frequency limits in VFO mode.

### Channel Scan
Scan through programmed channels.

### Preset Scan (ALPHA 19+)
Use saved scan preset configurations.

## RMS Integration

### CHIRP CSV Import (ALPHA 19+)

RMS can now load CHIRP CSVs for easy channel/frequency import.

### Right-Click Menu (ALPHA 15+)

Added right-click menu to channels tab in RMS for quick actions.

## Scan Presets vs Regular Scanning

### Use Scan Presets When:
- You frequently scan the same frequency ranges
- You need quick access to configured scan setups
- You want to maintain multiple scan configurations

### Use Regular Scan When:
- One-time or ad-hoc scanning
- Testing different scan parameters
- Don't need to save configuration

## Spectrum Scope vs Scanner

⚠️ **Important:** The Spectrum Scope is NOT a scanner.

For proper signal scanning, use the scan functions (not the spectrum scope).

See [Spectrum Scope Guide](spectrum-scope.md) for details on scope limitations.

## Tuner Mode Scanning (BETA 05F+)

Scanning is now available in Si4732 Tuner Mode with improvements:

- Scanning won't start until LP key is released
- Scanning paused while key is pressed
- Improved scanning speed

**ALPHA 17a Fix:** TX Frequency clearing for channel mode scanning fixed.

## Tips & Best Practices

### Optimizing Scan Speed

- Use appropriate step size (larger = faster, but may miss signals)
- Use scan presets for frequently accessed configurations
- Exclude known unwanted frequencies with #

### Organizing Scan Presets

- Use presets 1-9 for most common scans
- Name presets clearly (T9 entry)
- Group related scans (e.g., 10-19 for HF, 20-29 for VHF)

### Power Management

- LCD timeout during scanning saves battery
- Consider brightness settings for long scan sessions

## Troubleshooting

### Scan Preset Menu Won't Open

**Check:**
- At least one preset is saved
- You're in VFO mode (not channel mode)
- Correct activation key (default LP-1)

### Scan Stops on Unwanted Frequency

**Solution:** Press # to exclude that frequency from scan

### Scanning Too Fast/Slow

**Adjust:**
- Frequency step size
- Squelch settings
- Scan delay settings (if available in menu)

### Modulation/Bandwidth Not Working (Pre-BETA 3C)

**Fixed in:** BETA 3C - Automatic modulation and bandwidth for scan presets

## Version History

- **ALPHA 15:** LCD timeout during scanning
- **ALPHA 19:** Scan Presets introduced (up to 99), CHIRP CSV import
- **BETA 01:** Increased scanning speed
- **BETA 3C:** Fixed automatic modulation and bandwidth for scan presets
- **ALPHA 17a:** Fixed TX frequency clearing for channel mode scanning
- **BETA 05F:** Tuner mode scanning improvements, speed improvements
- **BETA 05G:** Frequency exclusion in spectrum scope monitor mode, Clear Ignores function
