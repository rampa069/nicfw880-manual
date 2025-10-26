# Menu Structure Reference

Overview of the Main Menu structure in nicFW880.

**Access:** Press GREEN button to open Main Menu

---

## Menu Categories

### Time
- **Enable:** Show/hide clock display (BETA 04+)
- **Format:** 24-hour or 12-hour display (BETA 03+)
- **Time Zone:** Set time zone
- **(GPS Sync moved to GPS menu in BETA 04E)**

### GPS (BETA 02+)
- **Enabled:** Turn GPS functions on/off (moved from Time menu in BETA 04E)
- **Point Save:** Save current location as waypoint
- **Waypoint management:** Browse, edit, delete waypoints
- **Units:** Imperial, Nautical, Metric
- **Other GPS settings**

### APRS (BETA 04E+)
- **Callsign:** Your amateur radio callsign
- **SSID:** Secondary station ID (0-7)
- **Decode:** On/Off/Popup
- **Popup Time:** Duration popup stays visible (0.1-9.9 seconds)
- **Symbol:** APRS symbol code
- **Status:** MIC-E status field (0-7)
- **Beacon Time:** Minutes between automatic beacons
- **Beacon Distance:** Metres to trigger distance-based beacon
- **Beacon Comment:** Custom text (up to 24 characters)
- **APRS Deviation:** Loudness of APRS data
- **Hear Tones:** Make APRS data audible (diagnostic)
- **Digipeater Path:** Off, WIDE1-1, WIDE2-2, AX.25
- **AX.25 Digipeater:** Callsign (default: ARISS)
- **Use VFO:** Assign specific VFO for APRS (A/B/C) (BETA 05D+)
- **Ambiguity:** Location accuracy (20m, 200m, 2km)
- **KISS Mode settings (BETA 04F+)**
  - Persist: 1-255
  - Slot Time: 0-200ms

### DTMF (BETA 01+)
- **Deviation:** Loudness of DTMF tones
- **Digit Time:** Duration each digit transmitted (ms)
- **Gap Time:** Silence between digits (ms)
- **Start Pause:** Delay before tones begin (ms)
- **Preset:** Edit DTMF digit sequences (up to 99 presets)
- **Decoding:** Off/On/P-ID (BETA 02+)
- **Display For:** How long decoded digits shown (seconds) (BETA 02+)
- **SeqEnd Pause:** Pause marking end of sequence (seconds) (BETA 02+)

### Scanning (ALPHA 19+)
- **Load:** Load scan preset
- **Save:** Save current scan configuration
- **Delete:** Delete scan preset
- **Scan preset configuration**

### Calibration
- **Batt V Cal:** Battery voltage calibration multiplier
- **Batt Full:** ADC value for fully charged battery
- **Batt Flat:** ADC value for discharged battery
- **XTAL671:** Radio frequency calibration factor
- **Power calibration settings (ALPHA 15+)**
- **Other calibration options**

### Advanced
- **SPI Deferral:** Delay before saving to flash (seconds)
- **Tone Monitor Time:** CTCSS/DCS indicator duration (seconds)
- **AM AGC Fix:** Additional AGC for strong AM signals
- **Noise Gate:** Mute on excessive noise
- **AF Filters:** High Pass, Low Pass, De-emphasis, FSK
- **DTMF Deviation:** DTMF tone volume
- **Repeater Tone:** Frequency in Hz (default 1750 Hz)
- **TX Deviation:** FM deviation amount (default 64)
- **Subtone Deviation:** CTCSS/DCS level
- **AM Hack Transform:** AM TX experimental setting (ALPHA 19+)
- **AM Hack Displacement:** AM TX gain setting (ALPHA 19+)
- **Audio Boost:** Increase audio gain (BETA 04F+)
- **PIN:** Set security PIN (BETA 03+)
- **PIN Action:** Normal/Startup (BETA 3A+)
- **Wake LCD On:** Keys Only/RX/TX/All (BETA 03+)

### Squelch
- **Noise Ceiling:** Max noise threshold
- **Noise Trigger:** Noise threshold for squelch open
- **Squelch Level:** S-Unit requirement (0-9)
- **Noise Hysteresis:** Noise stability buffer (ALPHA 17+: 0-20)
- **Signal Hysteresis:** Signal stability buffer (ALPHA 17+: 0-20)
- **Squelch Throttle:** Minimum delay between state changes (0.1s units)
- **Squelch Tail:** Consecutive checks before close (ALPHA 18a+)
- **Squelch Tail Elimination (STE):** RX/TX/Both (ALPHA 18a+)

### Si4732 Tuner (ALPHA 17+)
- **Presets:** Tuner channel presets
- **Band selection**
- **Modulation settings**
- **BFO settings**
- **Other tuner options**

### User Keys
- **Assign user functions to long-press keys**
- **Configure key behaviors**
- **Reassign default functions**

### VFO Settings
- **TX permission**
- **Simplex/Duplex**
- **Offset**
- **CTCSS/DCS**
- **Power level**
- **Bandwidth**
- **Modulation**
- **Other VFO parameters**

### Display Settings
- **Brightness:** Day mode brightness
- **Brightness (Night):** Night mode brightness (ALPHA 13+)
- **Skin selection**
- **Font selection**
- **UI configuration (ALPHA 12+)**

### System
- **Shut Down:** Safe power off (saves pending changes)
- **Factory Reset:** Hold EMG at power-on
- **Firmware version info**
- **Other system settings**

---

## Menu Navigation

### Basic Controls
- **UP/DOWN:** Navigate menu items
- **GREEN:** Select / Enter submenu / Confirm
- **RED:** Back / Cancel
- **Long-press GREEN:** Quick access to certain functions (context-dependent)

### Tips
- **RED triangle warning:** Changes pending, use Shut Down before powering off
- **Nested menus:** Use RED to go back one level
- **Quick exit:** Usually RED from top level returns to radio mode

---

## Function Menu (ALPHA 15+)

**Access:** LP-GREEN (default)

Browse and activate any user function without navigating main menu.

**Functions available:**
- Scan Presets
- Spectrum Scope
- GPS Module
- Si4732 Tuner
- Frequency Counter
- DTMF Preset Menu
- Crossband Repeater
- All other assignable user functions

---

## Version-Specific Notes

### ALPHA 12+
Configurable UI introduced - layout and display elements customizable

### ALPHA 15+
Function Menu added for quick access to user functions

### BETA 03+
GPS menu category expanded significantly with waypoint management

### BETA 04E+
APRS menu category added with comprehensive APRS settings

### BETA 05D+
APRS "Use VFO" setting added for VFO assignment

---

## Menu Shortcuts

| From Mode | Shortcut | Accesses |
|-----------|----------|----------|
| Normal Radio | GREEN | Main Menu |
| GPS Module | SP-GREEN | Main Menu |
| Si4732 Tuner | SP-GREEN | Main Menu |
| Spectrum Scope | SP-GREEN | Main Menu (BETA 05F+) |
| Any Mode | LP-GREEN | Function Menu |

---

## Related Documentation

- [Advanced Menu Details](advanced-menu.md)
- [Squelch Settings Details](squelch-settings.md)
- [Calibration Guide](../guides/calibration.md)
- [Key Shortcuts Reference](key-shortcuts.md)
