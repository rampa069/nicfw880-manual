# Key Shortcuts Quick Reference

Quick reference card for all nicFW880 key shortcuts.

---

## Normal Radio Mode - Short Press

| Key | Function |
|-----|----------|
| 0–9 | Enter frequency/channel |
| UP/DOWN | Change frequency, navigate menus |
| GREEN | Confirm, Open Main Menu |
| RED | Cancel, Back |
| S1 | Side button 1 (configurable) |
| S2 | Side button 2 (configurable) |
| EMG | Toggle Day/Night mode |
| PTT | Push to talk |

## Normal Radio Mode - Long Press (Default)

| Key | Function | Since |
|-----|----------|-------|
| LP-1 | Scan Presets | ALPHA 19 |
| LP-2 | Spectrum Scope | ALPHA 18a |
| LP-7 | Frequency Counter | ALPHA 13 |
| LP-8 | Si4732 Tuner Module | ALPHA 16 |
| LP-GREEN | Function Menu | ALPHA 15 |
| LP-EMG | Crossband Repeater | ALPHA 13 |

---

## GPS Module

### Short Press
| Key | Function |
|-----|----------|
| SP-GREEN | Open main menu |
| SP-# | Toggle Data / Tracker Mode |
| SP-* | Switch compass rotation mode |
| SP-6 | Open Heard Beacons list (APRS) |
| SP-7 | Open waypoint selection |
| SP-9 | Toggle units (Imperial/Nautical/Metric) |
| SP-RED | Exit GPS module |

### Long Press
| Key | Function |
|-----|----------|
| LP-GREEN | GPS function menu |
| LP-1 | Set tracking radius / Edit Latitude° |
| LP-2 | Edit Longitude° |
| LP-4 | Set target to current / Change Lat sign |
| LP-5 | Clear target / Change Lon sign |

### Special
| Key | Function |
|-----|----------|
| PTT + S2 | Transmit GPS location via DTMF |

---

## Si4732 Tuner Module (BETA 02+)

### Short Press
| Key | Function |
|-----|----------|
| SP-EMG | Toggle Day/Night |
| SP-* / SP-# | Adjust BFO |
| SP-0–9 | Enter frequency/channel |
| SP-Up/Down | Step frequency / Seek |
| SP-GREEN | Open Main Menu |
| SP-S1 | Change Band |
| SP-S2 | Change Modulation |
| SP-RED | Toggle VFO/Channel mode |

### Long Press
| Key | Function |
|-----|----------|
| LP-1 / LP-3 | Seek Down / Seek Up |
| LP-2 | Reset BFO to 0 |
| LP-4 | Enter new frequency step |
| LP-5 | Toggle S-Meter |
| LP-6 | Toggle squelch (WFM only) |
| LP-7 | Enable/disable scope |
| LP-8 | Toggle power line filter |
| LP-9 | Toggle AM bandwidth |
| LP-RED | Exit tuner mode |
| LP-GREEN | Function menu |

---

## Spectrum Scope

### Short Press
| Key | Function |
|-----|----------|
| SP-0/9 | Enter new center frequency |
| SP-RED | Exit scope |
| SP-# | Center on strongest / Exclude freq |
| SP-Up/Down | Shift center frequency |
| SP-S1 | Monitor center frequency |
| SP-S2 | Monitor strongest signal |
| SP-GREEN | Open Main Menu (05F+) |
| PTT | Exit and stay on frequency (05G+) |

### Long Press (BETA 05F+)
| Key | Function |
|-----|----------|
| LP-GREEN | Scope function menu |
| LP-0 to 9 | Set trigger level (0=Disable) |
| LP-# | Toggle scope width (15/30/60/120) |
| LP-* | Enter new frequency step |
| LP-S1 | FM modulation |
| LP-S2 | AM modulation |
| LP-EMG | DSB modulation |

---

## DTMF Preset Menu

**Opening:** SP-S2 (default)

| Key | Function |
|-----|----------|
| Up/Down | Browse presets |
| 0–9 | Jump to preset number |
| RED | Exit menu |
| GREEN/PTT | Transmit selected preset |
| LP-GREEN | Edit preset name |

### Editing DTMF Digits
| Key | Function |
|-----|----------|
| 0–9 | Digits 0–9 |
| GREEN | Digit A |
| UP | Digit B |
| DOWN | Digit C |
| RED | Digit D |
| *, # | Star, Hash |
| PTT | Confirm |
| S1 | Backspace |
| S2 | Abort |

---

## Scan Preset Menu (ALPHA 19+)

**Opening:** LP-1 (default)

| Key | Function |
|-----|----------|
| Up/Down | Browse presets |
| 0–9 | Jump to preset |
| GREEN | Start scanning |
| LP-GREEN | Edit preset name |

---

## Remote Control (RMS BETA 05E+)

| Keyboard/Mouse | Radio Function |
|----------------|----------------|
| 0–9 | 0–9 |
| . or * | * |
| Tab or # | # |
| Enter | GREEN |
| Esc or Backspace | RED |
| Up or PgUp | UP |
| Down or PgDown | DOWN |
| Mouse Wheel | UP/DOWN |
| F1 | S1 |
| F2 | S2 |
| F3 | EMG |
| Space | PTT |

---

## Crossband Repeater (ALPHA 13)

**Activation:** LP-EMG

| Key | Function |
|-----|----------|
| RED | Exit XB Repeater |
| STAR (*) | Toggle screen on/off |

---

## Special Functions

| Action | Function |
|--------|----------|
| Hold EMG at power-on | Settings reset to defaults |
| LP (Channel mode) | Copy channel to VFO |
| LP-RED (Waypoint browse) | Set waypoint as current location |
| PTT + S1 (Radio mode) | Send APRS beacon (BETA 04E+) |
| PTT + S2 (GPS mode) | TX GPS location via DTMF (BETA 04A+) |

---

## Quick Mode Access

| Long Press | Opens |
|------------|-------|
| LP-1 | Scan Presets (default) |
| LP-2 | Spectrum Scope (default) |
| LP-7 | Frequency Counter |
| LP-8 | Si4732 Tuner |
| LP-GREEN | Function Menu |
| LP-EMG | Crossband Repeater |

---

## Tips

- **Most Long-Press keys are reassignable** via User Keys menu
- **Function Menu (LP-GREEN)** provides access to all user functions
- **Mode-specific keys** change based on current mode (GPS, Tuner, Scope)
- **RED triangle warning** means changes pending - don't power off!

---

## See Also

- [Complete Key Mappings Guide](../guides/key-mappings.md) - Detailed explanations
- [User Guides](../guides/) - Feature-specific information
