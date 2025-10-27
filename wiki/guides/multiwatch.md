# Multiwatch Guide

## Overview

Multiwatch allows monitoring multiple VFOs simultaneously, automatically switching to the VFO that receives a signal.

**Enhanced:** ALPHA 15, BETA 03, BETA 05F
**Latest updates:** BETA 05F (Mixed VFO support)

## How Multiwatch Works

The radio monitors all configured VFOs and automatically switches to the VFO receiving a signal.

## Multiwatch VFO Switch (ALPHA 15+)

Determines behavior after signal is lost.

**Options:**
- **Stay on detected VFO:** Remain on the VFO that received the signal
- **Switch back:** Return to the original VFO after signal loss

**Configuration:** Check main menu for Multiwatch settings

## MW Pause

Configurable pause duration before resuming multiwatch after a reception.

Used in:
- Regular multiwatch operation
- HT Monitor in Si4732 Tuner Mode (BETA 03+)

## Mixed VFO Support (BETA 05F)

### Previous Limitation

Mixing HF and non-HF VFOs in Multiwatch was disallowed because:
- Caused rapid switching of the HF band-switch relay
- Annoying noise
- Extra relay wear

### BETA 05F Update

**Now supported!**

The HF band-switch relay is suppressed during Multiwatch checks:
- Active VFO is dominant for relay state
- Mixed VFOs can be used
- VFOs that would require toggling the relay are skipped during checks

**Example:**
- VFO A: HF frequency (e.g., 7.100 MHz)
- VFO B: VHF frequency (e.g., 146.520 MHz)
- VFO C: UHF frequency (e.g., 446.000 MHz)

All three can now be monitored simultaneously without relay issues.

## HT Monitor in Si4732 Tuner Mode (BETA 03+)

If Multiwatch is enabled and configured correctly:

### Requirements:
- VFOs do not mix HF and VHF/UHF frequencies
- Scope is disabled in tuner mode

### Behavior:
- Any received signal on one of the three VFOs temporarily interrupts the tuner
- Switches back to HT mode to receive the signal
- After the configured **MW Pause**, Si4732 mode resumes automatically

This allows monitoring your regular frequencies while using the tuner.

## Configuration

### Enabling Multiwatch

Check Main Menu for Multiwatch settings (exact path may vary by version).

### Multiwatch Settings

- **VFO Switch:** Stay vs. Switch back
- **MW Pause:** Duration before resuming multiwatch
- Other multiwatch parameters

## VFO Configuration for Multiwatch

### Best Practices:

1. **Configure all VFOs you want to monitor:**
   - VFO A: Your primary frequency
   - VFO B: Secondary frequency
   - VFO C: Tertiary frequency

2. **Set appropriate squelch:**
   - Too tight: May miss weak signals
   - Too loose: False triggers

3. **Mixed bands (BETA 05F+):**
   - Can now mix HF and VHF/UHF
   - VFOs requiring relay switching are skipped during checks

## Multiwatch vs. Scan

### Use Multiwatch when:
- Monitoring specific frequencies (up to 3 VFOs)
- Need immediate response to activity
- Want to stay on the active frequency

### Use Scan when:
- Monitoring many frequencies
- Searching for activity across a band
- Using scan presets for organized monitoring

See [Scanning Guide](scanning.md) for scan features.

## Compatibility with Other Features

### GPS Module (BETA 04+)

Rudimentary RX/TX while GPS module is active:
- Uses whatever VFO was active when GPS module started
- No Multiwatch in GPS mode

### Si4732 Tuner Mode (BETA 03+)

HT Monitor integration allows multiwatch to interrupt tuner for VFO activity.

### APRS (BETA 05C+)

**Important considerations:**
- Fix for side buttons stopping when squelch is open while APRS decoding is active
- Requires Main Menu → APRS → Use VFO to be set
- Do not use squelch override on VFO assigned to APRS

**BETA 06 Update - VFO Exclusion:**
If APRS decoding is disabled but an APRS VFO is assigned (via Main Menu → APRS → Use VFO), that VFO will be automatically excluded from multiwatch. This prevents conflicts and ensures proper operation.

See [APRS Guide](aprs.md) for more details.

## Troubleshooting

### Multiwatch Not Switching

**Check:**
- Multiwatch is enabled
- Squelch settings on all VFOs
- VFO frequencies are valid and configured

### Relay Clicking Noise (Pre-BETA 05F)

If mixing HF and VHF/UHF VFOs:
- **Solution:** Update to BETA 05F+ for mixed VFO support
- **Workaround:** Keep all VFOs in same band group (all HF or all VHF/UHF)

### Can't Monitor Certain VFO

**BETA 05F+:** VFOs requiring HF relay toggle may be skipped during multiwatch checks. This is normal behavior to prevent relay wear.

### Tuner Interrupted Too Often

**Adjust:**
- MW Pause duration (longer pause = less interruption)
- Squelch on VFOs (tighter squelch = fewer triggers)
- Consider disabling Multiwatch when tuner use is primary

## Tips & Best Practices

### Optimizing Multiwatch

1. **Set appropriate MW Pause:**
   - Too short: Constant switching
   - Too long: Delayed return to monitoring

2. **Balance VFO priorities:**
   - Place most important frequency on VFO A
   - Configure VFO switch behavior accordingly

3. **Use with Si4732 Tuner:**
   - Great for monitoring while listening to broadcasts
   - Adjust MW Pause to balance between tuner and HT

### Power Management

Multiwatch consumes more power due to constant monitoring. Consider:
- Battery capacity for extended operation
- Disabling when not needed

## Version History

- **ALPHA 15:** Multiwatch VFO Switch setting
- **BETA 03:** HT Monitor integration with Si4732 Tuner
- **BETA 05C:** APRS compatibility fixes
- **BETA 05F:** Mixed VFO support (HF + VHF/UHF)
