# Spectrum Scope Guide

## Overview

The Spectrum Scope provides visual representation of RF signals across a frequency range. It is available in both normal radio mode and Si4732 tuner mode.

**First introduced:** ALPHA 18a (Normal radio mode)
**Available in tuner:** ALPHA 16+ (Si4732 tuner mode)
**Latest updates:** BETA 05F/05G

## Activation

### Normal Radio Mode
**Default key:** LP-2 (configurable)

### Si4732 Tuner Mode
**Activation:** LP-# or LP-7 (version dependent)

See [Si4732 Tuner Guide](si4732-tuner.md) for tuner-specific scope usage.

## Display

When opened, the scope:
- Centers on your currently active VFO frequency
- Uses your current step, modulation, and bandwidth settings
- Default display: 60-bar wide scope

### Upper Display Section

Shows VFO-like information:
- Current center frequency
- Bandwidth
- Frequency step
- Strongest signal
- Modulation
- Scope width

## Scope Widths

Toggle scope width with **LP-#**

Available widths:
- 15 bars
- 30 bars
- 60 bars (default)
- 120 bars

## Key Controls (Normal Radio Mode)

### Short Press (SP) Keys

- **SP-0 / SP-9:** Enter new center frequency
- **SP-RED:** Exit monitor mode / Exit scope
- **SP-#:** Center scope on the strongest signal
- **SP-Up / SP-Down:** Shift center frequency by current step
- **SP-S1:** Monitor center frequency
- **SP-S2:** Monitor strongest signal frequency

### Long Press (LP) Keys

- **LP-#:** Toggle scope width (15/30/60/120 bars)
- **LP-\*:** Enter new frequency step

### BETA 05F+ Additional Controls

- **LP-GREEN:** Open scope function menu
- **LP-0 to 9:** Set monitor trigger level (LP-0 = Disable)
- **LP-S1:** FM modulation
- **LP-S2:** AM modulation
- **LP-EMG:** DSB modulation

## Function Menu (BETA 05F+)

**Access:** LP-GREEN

The scope now has its own function menu providing quick access to:
- Modulation selection (FM, AM, DSB)
- Monitor trigger settings (BETA 06: Set/Clear Trigger)
- Set Ignore (SP #) (BETA 06)
- Clear ignores
- Freq → VFO (PTT) (BETA 06)
- Other scope functions

Also selectable via the function menu.

## Monitor Trigger (BETA 05F+)

Automatically monitor signals above a certain level.

**Note:** A regular scan is still the better tool for this, but the trigger is provided for completeness.

### Setting Trigger Level

**Control:** LP 0-9

- **LP-0:** Disable trigger
- **LP-1 to 9:** Set trigger level (1 = lowest, 9 = highest)

**Visual indicator:** Blue line appears on scope showing trigger level

### Set Trigger Function (BETA 06+)

**Access:** Via Function Menu (LP-GREEN) → Set Trigger

**Behavior:**
- If no trigger is set: Sets trigger at level 6
- If trigger is already set: Clears the trigger

This provides a quick toggle for enabling/disabling the trigger without navigating through level settings.

### Exiting Monitor Mode (BETA 05G+)

Press **PTT** to exit scope during monitoring and remain on the monitored frequency.

## Modulation Selection (BETA 05F+)

Change modulation directly from scope:

- **LP-S1:** FM
- **LP-S2:** AM
- **LP-EMG:** DSB (Double Sideband)

Also selectable via the function menu.

**BETA 05G Fix:** Modulation changes in scope no longer "stick" after exiting.

## Frequency Exclusion/Ignore

### BETA 05G Updates

**In monitor mode:** Press **#** while monitoring to exclude/ignore frequency

Works the same as when scanning.

### BETA 06 Updates

**Set Ignore (SP #):** New function menu option to ignore/exclude frequencies
- Accessible via Function Menu (LP-GREEN)
- Alternative method to pressing # during monitoring

**Freq → VFO (PTT):** Copy current frequency to active VFO
- Accessible via Function Menu (LP-GREEN)
- Press PTT to transfer frequency from scope to VFO
- Useful for quickly saving interesting frequencies

### Clear Ignores (BETA 05G)

"Clear Ignores" key function added to scope (accessible via function menu).

Clears all excluded/ignored frequencies.

## Main Menu Access (BETA 05F+)

The Main Menu can now be accessed during Scope operation.

Press **SP-GREEN** while in scope.

## Scope in Channel Mode (BETA 05G+)

Scope is prevented from starting when in channel-based modes (only works in VFO mode).

## Settings Persistence (BETA 05G)

Fixed issue with scope settings resetting after closing menus.

Scope settings now properly retained.

## Important Limitations

### ⚠️ THE SPECTRUM SCOPE IS NOT A SCANNER

**Critical Understanding:**

The radio is **INCAPABLE** of listening to a signal and scanning for others at the same time.

The scope **CANNOT** continue drawing while listening to a signal.

The scope has to **STOP** to listen to a signal.

**Why no auto-stop on signals?**

If it automatically stopped on every signal, it would act as a simple scanner - a slow one with limited range. The scope would be completely pointless as it could only ever display one detected signal; everything else would be noise, which defeats its purpose.

**!!IF YOU WANT TO SCAN, RUN A REGULAR SCAN!!**

See [Scanning Guide](scanning.md) for proper scanning functionality.

## Use Cases

### Signal Visualization
View RF activity across a frequency range without stopping.

### Finding Strongest Signal
Quickly identify the strongest signal in a range:
1. Open scope
2. Press SP-# to center on strongest signal
3. Press SP-S2 to monitor strongest signal

### Band Analysis
Survey activity across a band:
1. Set appropriate scope width (LP-#)
2. Adjust center frequency as needed (SP-Up/Down)
3. Use appropriate frequency step (LP-\*)

### Manual Monitoring
Use monitor trigger for semi-automated signal detection:
1. Set trigger level (LP 0-9)
2. Blue line shows trigger threshold
3. Signals above threshold can be monitored
4. Press PTT to stay on frequency (BETA 05G+)

## Tips & Best Practices

### Choosing Scope Width
- **15/30 bars:** Narrow focus, detailed view
- **60 bars:** Good balance (default)
- **120 bars:** Wide overview

### Frequency Step
- Smaller steps: More detailed sweep, slower
- Larger steps: Faster sweep, less detail
- Adjust with LP-\* based on your needs

### Modulation Selection
Choose appropriate modulation for the band:
- VHF/UHF: Usually FM
- HF/SW: Usually AM or SSB
- Experiment with DSB for certain signals

## Troubleshooting

### Scope Won't Start
**BETA 05G+:** Cannot start scope in channel-based modes. Switch to VFO mode.

### Settings Keep Resetting
**Fixed in:** BETA 05G

### Modulation Changes Persist After Exit
**Fixed in:** BETA 05G

### Can't Access Menu in Scope
**Solution:** Use SP-GREEN (available BETA 05F+)

## Si4732 Tuner Scope

The scope is also available in Si4732 Tuner Mode with some differences:

**Requirements (BETA 02+):**
- Frequency >18 MHz
- Dual antennas required

See [Si4732 Tuner Guide](si4732-tuner.md) for tuner-specific controls.

## Version History

- **ALPHA 16:** Scope in Si4732 tuner mode
- **ALPHA 18a:** Spectrum Scope in normal radio mode introduced
- **BETA 05F:** Function menu, monitor trigger, modulation selection, main menu access
- **BETA 05G:** Ignore frequency in monitor mode, PTT exit, clear ignores, fixes
