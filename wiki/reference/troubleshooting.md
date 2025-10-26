# Troubleshooting Guide

Common issues and solutions for nicFW880.

---

## Installation & Flashing

### Radio Not Supported / White Screen During Flash

**Symptoms:**
- Screen turns white (instead of black) during firmware flashing
- Radio doesn't respond after flash

**Cause:** Early iRadio UV-98 models have hardware differences (LCD backlight).

**Solution:** These models are not supported. Only radios with serial numbers >300 are supported.

**Supported models:**
- Radtel RT-880, RT-880G (serial >300)
- iRadio UV-98 Plus (serial >300)

### USB/LSB Not Working in Si4732 Tuner

**Symptoms:** USB/LSB modes don't receive properly in tuner

**Solution:**
1. Follow SPI Flash restore process
2. Close RMS
3. Reopen RMS

**Reference:** See [Si4732 Tuner Guide](../guides/si4732-tuner.md)

### Settings Reset After Firmware Update

**Expected behavior:** Major version changes may reset settings.

**Solution:**
- Backup channels/settings to CSV before updating
- Restore from CSV after update
- For BETA 04F and similar: Hold EMG at power-on for clean default settings

---

## Battery & Power

### Battery Reading Incorrect

**Solutions:**
1. Recalibrate battery (Main Menu → Calibration)
2. See [Calibration Guide](../guides/calibration.md) → Battery Calibration

### Red Triangle Won't Disappear

**Cause:** Changes pending, waiting for SPI Deferral period to expire.

**Solutions:**
- Wait for triangle to disappear (SPI Deferral timeout)
- Use Main Menu → System → Shut Down
- **Do not power off while triangle visible!**

---

## GPS Issues

### GPS Not Working

**Check:**
1. Main Menu → GPS → Enabled is set to ON (moved from Time menu in BETA 04E)
2. GPS icon status (dish up = locked, dish down = no lock)
3. Clear view of sky for satellite acquisition

**GPS models only:** RT-880G

### GPS Won't Lock

**Solutions:**
- Move to location with clear sky view
- Wait 2-5 minutes for initial lock
- Check GPS icon (dish should point up when locked)

### GPS Distance Incorrect (Pre-BETA 05G)

**Fixed in:** BETA 05G - GPS distance calculation now corrects for latitude

**Solution:** Update to BETA 05G or later

---

## APRS Issues

### Side Buttons Stop Working

**Cause:** Squelch open while APRS decoding active (pre-BETA 05C)

**Solutions:**
1. Set Main Menu → APRS → Use VFO to A, B, or C
2. Do not use squelch override on VFO assigned to APRS
3. Update to BETA 05C+ for fix

**BETA 05D:** Squelch override automatically canceled when switching VFOs

### APRS Beacons Not Transmitting

**Check:**
1. Callsign set (Main Menu → APRS → Callsign)
2. TX permitted on VFO
3. If using automatic beacons: Beacon Time or Beacon Distance configured
4. Note: Auto beacons throttled to one per minute

### Can't Hear APRS Tones

**Normal behavior:** APRS data normally not audible.

**To hear (for diagnostic):** Main Menu → APRS → Hear Tones → On

---

## Scanning Issues

### Scan Preset Menu Won't Open

**Requirements:**
1. At least one scan preset saved
2. Must be in VFO mode (not channel mode)
3. Correct activation key (default LP-1)

**Solution:** Check all requirements above

### Scanning Stops on Unwanted Frequency

**Solution:** Press # to exclude that frequency from scan

---

## DTMF Issues

### DTMF Preset Menu Won't Open

**Requirements:**
1. At least one valid DTMF preset saved
2. TX is permitted (not in RX-only mode)
3. Correct key assigned (default SP-S2)

**Solution:** Check all requirements

### Repeater Not Responding to DTMF

**Solutions:**
1. Increase Deviation (louder tones)
2. Increase Start Pause (give repeater time to open)
3. Verify correct DTMF sequence
4. Check if repeater requires specific tone duration

**Adjust:**
- Main Menu → DTMF → Deviation
- Main Menu → DTMF → Start Pause
- Main Menu → DTMF → Digit Time

---

## Squelch Issues

### Squelch Opens on Noise

**Solutions:**
- Increase Squelch Level
- Increase Noise Trigger
- Lower Noise Ceiling
- Enable Noise Gate

**See:** [Squelch Settings Reference](squelch-settings.md)

### Squelch Chatters (Rapid Open/Close)

**Solutions:**
- Increase Hysteresis
- Increase Squelch Throttle
- Increase Squelch Tail

### Squelch Cuts Out During Weak Signal

**Solutions:**
- Increase Squelch Tail
- Increase Hysteresis
- Lower Squelch Level
- Check Noise Ceiling (may be too low)

---

## Spectrum Scope Issues

### Scope Won't Start (BETA 05G+)

**Cause:** Cannot start scope in channel-based modes

**Solution:** Switch to VFO mode

### Scope Settings Reset After Closing Menus

**Fixed in:** BETA 05G

**Solution:** Update to BETA 05G or later

### Modulation Changes Persist After Exiting Scope

**Fixed in:** BETA 05G

**Solution:** Update to BETA 05G or later

---

## Multiwatch Issues

### Multiwatch Not Switching

**Check:**
1. Multiwatch is enabled
2. Squelch settings on all VFOs
3. VFO frequencies valid and configured

### Relay Clicking Noise (Pre-BETA 05F)

**Cause:** Mixing HF and VHF/UHF VFOs causes relay switching

**Solutions:**
- Update to BETA 05F+ for mixed VFO support
- Workaround: Keep all VFOs in same band group

---

## Si4732 Tuner Issues

### Speaker Muted in Tuner Mode

**Fixed in:** BETA 04A

**Solution:** Update to BETA 04A or later

### Signal Meter Causing Noise

**Solution:** Disable with LP-5

### Power Line Interference

**Solution:** Enable powerline filter with LP-8

### Seeking Doesn't Stop

**Fixed in:** BETA 3C (SP-Red stops seeking)

**Solution:** Update to BETA 3C or later

---

## Crossband Repeater Issues

### XB Repeater Won't Start

**Check all requirements:**
1. ✓ VFO-A and VFO-B in simplex mode?
2. ✓ Both VFOs allowed to transmit?
3. ✓ One VFO on VHF, other on UHF?
4. ✓ Squelch closed (not open)?

**If any requirement fails, XB mode won't activate.**

### Constant Triggering/Looping

**Causes:**
- Squelch too loose (picking up noise)
- Feedback between antennas
- Strong nearby signal

**Solutions:**
- Tighten squelch
- Improve antenna isolation
- Check for interference sources

---

## Frequency/Calibration Issues

### Frequencies Seem Off

**Solution:** Perform Radio Frequency Calibration (XTAL671)

**See:** [Calibration Guide](../guides/calibration.md) → Radio Frequency Calibration

### Power Output Too Low/High

**Solutions:**
1. Recalibrate power settings using diagnostic firmware
2. Check antenna SWR
3. Verify not in low power mode

---

## Remote Control Issues (BETA 05E+)

### Remote Tab Not Working

**Requirements:**
- BOTH firmware 05E and RMS 05E required

### Display Doesn't Refresh

**Solution:** Open and close menu to trigger redraw

### Connection Drops When Pressing PTT

⚠️ **WARNING:** RF energy near USB cable can fry UART chip

**Solution:**
- Keep antenna away from USB cable
- Use lower power when testing
- This is expected behavior with poor cable placement

---

## General Issues

### RX Frequency Disappearing on TX

**Fixed in:** ALPHA 15

**Solution:** Update to ALPHA 15 or later

### Serial Communication Errors

**Fixed in:** BETA 3C (errors introduced in 3B)

**Solution:** Update to BETA 3C or later

### TX Frequency Clearing During Channel Scan

**Fixed in:** ALPHA 17a

**Solution:** Update to ALPHA 17a or later

### Can't Access Menu in Spectrum Scope

**Added in:** BETA 05F (SP-GREEN accesses menu)

**Solution:** Update to BETA 05F or later, use SP-GREEN

---

## macOS RMS Issues

### RMS Won't Run on macOS

**Required:**
- BAUD must be set to 38400
- May need to remove quarantine flags
- May need to adjust file permissions

**Commands to try:**
```bash
xattr -d com.apple.quarantine /path/to/RMS
chmod +x /path/to/RMS
```

**Support:** macOS versions provided on "compile and hope" basis. Community support only.

---

## Getting Help

### Before Asking for Help

1. **Check your version:** Many issues fixed in later versions
2. **Verify supported hardware:** Serial number >300
3. **Review release notes:** Issue may be known
4. **Check RED triangle:** Wait for saves before power off
5. **Try settings reset:** Hold EMG at power-on

### What to Include When Reporting Issues

- Exact firmware version (e.g., "BETA 05G")
- Radio model and serial number
- Exact steps to reproduce
- What you expected vs. what happened
- Any error messages or warnings

### Resources

- Patreon: https://www.patreon.com/c/nicsure/posts
- GitHub (RMS): https://github.com/nicsure/nicfw880-rms-builder/
- Release notes in [Changelog](../changelog/)

---

## Related Documentation

- [Calibration Guide](../guides/calibration.md)
- [Squelch Settings](squelch-settings.md)
- [Advanced Menu](advanced-menu.md)
- [All User Guides](../guides/)
