---
title: "nicFW880 Menu Structure Cheat Sheet"
subtitle: "Quick Reference for Main Menu"
geometry: margin=1.5cm
fontsize: 9pt
header-includes: |
  \usepackage{longtable}
  \setlength{\LTleft}{0.15\textwidth}
  \setlength{\LTright}{0.15\textwidth}
---

# nicFW880 Menu Structure Cheat Sheet

**Access Main Menu:** Press GREEN button | **Access Function Menu:** Long-press GREEN

---

## Main Menu Categories

### Time
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Enable | Show/hide clock display | On/Off |
| Format | 24-hour or 12-hour display | 24h/12h |
| Time Zone | Set time zone | - |

### GPS
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Enabled | Turn GPS functions on/off | On/Off |
| Point Save | Save current location as waypoint | - |
| Waypoint management | Browse, edit, delete waypoints | - |
| Units | Distance units | Imperial/Nautical/Metric |

### APRS
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Callsign | Your amateur radio callsign | - |
| SSID | Secondary station ID | 0-7 |
| Decode | Decode behavior | On/Off/Popup |
| Popup Time | Popup duration | 0.1-9.9 seconds |
| Symbol | APRS symbol code | - |
| Status | MIC-E status field | 0-7 |
| Beacon Time | Minutes between beacons | Minutes |
| Beacon Distance | Distance trigger | Metres |
| Beacon Comment | Custom text | Up to 24 chars |
| APRS Deviation | Loudness of APRS data | - |
| Hear Tones | Make APRS audible | On/Off |
| Digipeater Path | Path configuration | Off/WIDE1-1/WIDE2-2/AX.25 |
| AX.25 Digipeater | Callsign for AX.25 path | Default: ARISS |
| Enabled | APRS operation mode | Off/VFO-A/VFO-B/VFO-C/Active VFO |
| Ambiguity | Location accuracy | 20m/200m/2km |
| Filter | AF Filter for APRS VFO | On/Off |
| **KISS Mode** | | |
| Persist | KISS persistence | 1-255 |
| Slot Time | KISS slot time | 0-200ms |

### DTMF
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Deviation | Loudness of DTMF tones | - |
| Digit Time | Duration per digit | Milliseconds |
| Gap Time | Silence between digits | Milliseconds |
| Start Pause | Delay before tones | Milliseconds |
| Preset | Edit DTMF sequences | Up to 99 presets |
| Decoding | Decode behavior | Off/On/P-ID |
| Display For | Display duration | Seconds |
| SeqEnd Pause | End-of-sequence pause | Seconds |

### Scanning
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Load | Load scan preset | - |
| Save | Save current scan configuration | - |
| Delete | Delete scan preset | - |
| Save Ignores | Persist excluded frequencies | On/Off |
| UScan Level | Ultra scan signal level | - |
| UScan Time | Wait time before signal check | Microseconds (default: 1500) |
| Scan Return | Action when scan stops | Last Signal/Start/Last Scanned |
| Smart Scan | Prioritize previously active frequencies | On/Off |

### Calibration
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Batt V Cal | Battery voltage calibration multiplier | - |
| Batt Full | ADC value for fully charged battery | ADC value |
| Batt Flat | ADC value for discharged battery | ADC value |
| XTAL671 | Radio frequency calibration factor | - |
| Power calibration | Power output calibration | - |

### Advanced
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| SPI Deferral | Delay before saving to flash | Seconds |
| Tone Monitor Time | CTCSS/DCS indicator duration | Seconds |
| AM AGC Fix | Additional AGC for strong AM signals | - |
| Noise Gate | Mute on excessive noise | On/Off |
| AF Filters | Audio filtering options | High Pass/Low Pass/De-emphasis/FSK |
| DTMF Deviation | DTMF tone volume | - |
| Repeater Tone | Repeater tone frequency | Hz (default: 1750) |
| TX Deviation | FM deviation amount | Default: 64 |
| Subtone Deviation | CTCSS/DCS level | - |
| AM Hack Transform | AM TX experimental setting | - |
| AM Hack Displacement | AM TX gain setting | - |
| Audio Boost | Increase audio gain | On/Off |
| PIN | Set security PIN | - |
| PIN Action | When to require PIN | Normal/Startup |
| Auto Lock | Automatic keypad lock timeout | 0=Off, 10+ seconds (min 10) |
| Wake LCD On | LCD wake trigger | Keys Only/RX/TX/All |

### Squelch
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Noise Ceiling | Max noise threshold | - |
| Noise Trigger | Noise threshold for squelch open | - |
| Squelch Level | S-Unit requirement | 0-9 |
| Noise Hysteresis | Noise stability buffer | 0-20 |
| Signal Hysteresis | Signal stability buffer | 0-20 |
| Squelch Throttle | Min delay between state changes | 0.1s units |
| Squelch Tail | Time to keep squelch open after signal loss | Seconds |
| Squelch Tail Elimination | Apply STE | RX/TX/Both |

### Si4732 Tuner
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Presets | Tuner channel presets | - |
| Band selection | Select frequency band | - |
| Modulation settings | Configure modulation mode | - |
| BFO settings | Beat Frequency Oscillator | - |

### User Keys
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Assign functions | Assign user functions to long-press keys | - |
| Configure behaviors | Configure key behaviors | - |
| Reassign defaults | Reassign default functions | - |

### VFO Settings
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| TX permission | Enable/disable transmission | On/Off |
| Simplex/Duplex | Operating mode | Simplex/Duplex |
| Offset | Frequency offset | MHz |
| CTCSS/DCS | Subtone configuration | - |
| Power level | Transmit power | Low/Med/High |
| Bandwidth | Channel bandwidth | Wide/Narrow |
| Modulation | Modulation type | FM/AM/SSB |

### Display Settings
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Brightness | Day mode brightness | 0-100% |
| Brightness (Night) | Night mode brightness | 0-100% |
| Skin selection | Choose UI theme | - |
| Font selection | Choose display font | - |
| UI configuration | Layout customization | - |

### Band Plan
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Band Plan editing | Configure frequency band limits | Radio-side editing |

### System
| Setting | Description | Values/Range |
|---------|-------------|--------------|
| Shut Down | Safe power off (saves pending changes) | - |
| Factory Restore | Full wipe of nicFW flash areas | Hold EMG at power-on |
| Firmware version | Display version info | - |

---

## Menu Navigation

| Action | Key | Notes |
|--------|-----|-------|
| Open Main Menu | GREEN | From normal radio mode |
| Navigate items | UP/DOWN | Scroll through menu items |
| Select/Enter | GREEN | Enter submenu or confirm |
| Back/Cancel | RED | Return to previous level |
| Quick access | LP-GREEN | Opens Function Menu |
| Exit to radio | RED | From top menu level |

---

## Menu Shortcuts

| From Mode | Shortcut | Accesses |
|-----------|----------|----------|
| Normal Radio | GREEN | Main Menu |
| GPS Module | SP-GREEN | Main Menu |
| Si4732 Tuner | SP-GREEN | Main Menu |
| Spectrum Scope | SP-GREEN | Main Menu |
| Any Mode | LP-GREEN | Function Menu |

---

## Function Menu

**Quick access to user functions without navigating main menu**

**Available functions:**
- Scan Presets
- Spectrum Scope
- GPS Module
- Si4732 Tuner
- Frequency Counter
- DTMF Preset Menu
- Crossband Repeater
- All other assignable user functions

---

## Quick Reference Tips

- **RED triangle warning:** Changes pending, use Shut Down before powering off
- **Nested menus:** Use RED to go back one level at a time
- **Context menus:** Some functions have additional options via LP-GREEN

---

**Firmware:** nicFW880 | **Latest:** v5.08.02B | **Author:** nicsure
