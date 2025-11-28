---
title: "nicFW880 Key Shortcuts Cheat Sheet"
subtitle: "Quick Reference for RT-880 / RT-880G / UV-98 Plus"
author: "nicsure"
date: "2025"
version: "v5.08.02B"
geometry: margin=1.5cm
fontsize: 9pt
---

# nicFW880 Key Shortcuts Cheat Sheet

**Firmware Version:** v5.08.02B | **Radio Models:** RT-880, RT-880G, iRadio UV-98 Plus

---

## 📻 Normal Radio Mode

### Short Press (SP)
| Key | Function | Key | Function |
|-----|----------|-----|----------|
| **0–9** | Enter frequency/channel | **UP/DOWN** | Change frequency/navigate |
| **GREEN** | Confirm / Main Menu | **RED** | Cancel / Back |
| **S1** | Side button 1 (config) | **S2** | Side button 2 (config) |
| **EMG** | Day/Night mode | **PTT** | Push to talk |
| **\*** | VFO A/B/C switch | **#** | Lock keypad |

### Long Press (LP) - Default Mappings
| Key | Function | Since |
|-----|----------|-------|
| **LP-1** | Scan Presets | ALPHA 19 |
| **LP-2** | Spectrum Scope | ALPHA 18a |
| **LP-7** | Frequency Counter | ALPHA 13 |
| **LP-8** | Si4732 Tuner Module | ALPHA 16 |
| **LP-GREEN** | Function Menu | ALPHA 15 |
| **LP-EMG** | Crossband Repeater | ALPHA 13 |

### During TX
| Key | Function | Since |
|-----|----------|-------|
| **PTT + S1** | Send APRS beacon | BETA 04E |
| **SP-1** (during TX) | Manual APRS beacon | BETA 06 |

---

## 🛰️ GPS Module

### Short Press
| Key | Function |
|-----|----------|
| **SP-GREEN** | Main menu |
| **SP-RED** | Exit GPS module |
| **SP-#** | Toggle Data/Tracker mode |
| **SP-\*** | Switch compass rotation |
| **SP-6** | Heard Beacons list (APRS) |
| **SP-7** | Waypoint selection |
| **SP-9** | Toggle units (Imp/Naut/Metric) |

### Long Press
| Key | Function |
|-----|----------|
| **LP-GREEN** | GPS function menu |
| **LP-1** | Set tracking radius / Edit Lat° |
| **LP-2** | Edit Lon° |
| **LP-4** | Set target to current / Lat sign |
| **LP-5** | Clear target / Lon sign |

### Special
**PTT + S2** → Transmit GPS location via DTMF

---

## 📡 Spectrum Scope

### Short Press
| Key | Function |
|-----|----------|
| **SP-0/9** | Enter new center frequency |
| **SP-RED** | Exit scope |
| **SP-#** | Center strongest / Exclude freq |
| **SP-Up/Down** | Shift center frequency |
| **SP-S1** | FM modulation |
| **SP-S2** | AM modulation |
| **SP-EMG** | DSB modulation |

### Long Press
| Key | Function | Since |
|-----|----------|-------|
| **LP-0** | Disable monitor trigger | BETA 05F |
| **LP-1–9** | Set trigger level (1-9) | BETA 05F |
| **LP-GREEN** | Scope function menu | BETA 05F |
| **PTT** | Exit & stay on freq | BETA 05G |

### Function Menu (LP-GREEN) - BETA 06
- **Set Trigger** - Toggle trigger at level 6
- **Set Ignore (SP #)** - Exclude frequency
- **Freq → VFO (PTT)** - Copy freq to VFO
- **Clear Ignores** - Reset exclusions

---

## 📻 Si4732 Tuner Module

### Short Press
| Key | Function |
|-----|----------|
| **SP-EMG** | Day/Night mode |
| **SP-\* / SP-#** | Adjust BFO |
| **SP-0–9** | Enter frequency |
| **SP-Up/Down** | Step freq / Seek |
| **SP-GREEN** | Main Menu |
| **SP-S1** | Change Band |
| **SP-S2** | Change Modulation |
| **SP-RED** | VFO/Channel mode |

### Long Press
| Key | Function |
|-----|----------|
| **LP-1 / LP-3** | Seek Down / Up |
| **LP-2** | Reset BFO to 0 |
| **LP-4** | New frequency step |
| **LP-5** | Toggle S-Meter |
| **LP-6** | Squelch (WFM only) |
| **LP-7** | Enable/disable scope |
| **LP-8** | Power line filter |
| **LP-9** | AM bandwidth |
| **LP-RED** | Exit tuner |
| **LP-GREEN** | Function menu |

---

## 🔧 Function Menu (LP-GREEN)

Available in **Radio Mode**, **GPS Module**, **Spectrum Scope**, and **Tuner Mode**.

Provides context-sensitive quick access to:
- User-defined functions
- Mode-specific operations
- Toggle settings
- Navigation shortcuts

### Assignable User Functions (BETA 07+)
- **TX Power Up** - Increase transmit power
- **TX Power Down** - Decrease transmit power
- **Heard Beacon Browser** - View APRS beacons
- **Weather Data** - View received weather
- And many more...

---

## 📝 Menu Navigation

| Key | Function |
|-----|----------|
| **UP/DOWN** | Navigate menu items |
| **GREEN** | Select / Enter submenu |
| **RED** | Back / Exit menu |
| **0–9** | Direct menu item selection |

---

## 🎯 Quick Access Summary

| Feature | Key Combo | Since |
|---------|-----------|-------|
| **Main Menu** | GREEN | - |
| **Function Menu** | LP-GREEN | ALPHA 15 |
| **Spectrum Scope** | LP-2 | ALPHA 18a |
| **GPS Module** | LP-GREEN → GPS | ALPHA 12 |
| **Si4732 Tuner** | LP-8 | ALPHA 16 |
| **Scan Presets** | LP-1 | ALPHA 19 |
| **Freq Counter** | LP-7 | ALPHA 13 |
| **Crossband Rpt** | LP-EMG | ALPHA 13 |
| **APRS Beacon** | PTT + S1 or SP-1 | BETA 04E/06 |
| **Day/Night** | EMG | - |

---

## 📌 Notes

- **SP** = Short Press | **LP** = Long Press
- **PTT** = Push To Talk
- Keys can be remapped via **Main Menu → Keys**
- User functions configurable via **Function Menu**
- For detailed documentation see: [Manual](https://github.com/rampa069/nicfw880-manual)

---

**Firmware:** nicFW880 by [nicsure](https://patreon.com/nicsure) | **Manual:** Community Compiled
