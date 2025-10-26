# nicFW880 BETA 03 Release

## macOS Versions of RMS
The macOS versions of the RMS are provided on a "compile and hope" basis. I do not have the ability to test or verify them, so please do not report issues expecting direct support. Any problems encountered on macOS will need to be addressed by other members of the community.

According to an experienced macOS user, these versions do work, but may require advanced steps such as removing quarantine flags or adjusting file permissions. Users should proceed only if they are comfortable with these procedures.

## Unsupported iRadio Models
Some early iRadio models are not compatible with nicFW. These can be identified by the screen turning white (instead of black) during firmware flashing. These models have hardware differences in the LCD backlight, causing nicFW880 to function incorrectly.

As these devices are no longer manufactured, I cannot obtain one for testing, and therefore they are not supported.

## What's new in BETA 03?

### 🔒 PIN Lockout
You can now secure your device with a PIN.

- Set a PIN under **main menu Advanced → PIN**
- When enabled, once the keypad is locked it cannot be unlocked until the correct PIN is entered.

### 🌙 Wake Screen Options
You now have more flexibility over what wakes the display. Configure this under **Wake LCD On:**

- **Keys Only** – Only key presses wake the screen.
- **RX** – A received signal or key press wakes the screen.
- **TX** – Transmit or key press wakes the screen.
- **All** – Any event will wake the display.

### 📡 HT Monitor in Si4732 Tuner Mode
If Multiwatch is enabled, the VFOs do not mix HF and VHF/UHF frequencies and the scope is disabled in tuner mode:

- Any received signal on one of the three VFOs will temporarily interrupt the tuner and switch back to HT mode.
- After the configured MW Pause, Si4732 mode resumes automatically.

### 🕒 24/12-Hour Clock Option
Under **Time → Format**, you can now choose between 24-hour and 12-hour display.

**Note:** In 12-hour mode, AM/PM replaces the day of the week to save space.

### 🧭 GPS Update with Waypoints
This is a major addition, so here's a breakdown of the new GPS functions:

**Starting GPS:** There's no default key — configure a user key or access it via the radio mode function menu (default: LP-GREEN).

GPS starts in Data Mode, showing raw GPS data as it's received.

#### Function Keys:

- **SP-GREEN** = Open main menu
- **SP-#** = Toggle Data Mode / Tracker Mode
- **SP-\*** = Switch compass rotation mode
- **SP-7** = Open waypoint selection (requires at least one saved waypoint)
- **SP-9** = Toggle units (Imperial, Nautical, Metric)
- **SP-RED** = Exit GPS module

#### Long-Press Keys (LP):

- **LP-GREEN** = GPS function menu
- **LP-1** = Set tracking radius
- **LP-4** = Set target to current location
- **LP-5** = Clear target

#### Managing Waypoints:

**To save a waypoint:**
1. Use LP-4 to set the target.
2. Open main menu (SP-GREEN) → GPS category → Point Save.
3. Choose an unused slot and press SP-GREEN to save.

**To rename:**
- Open waypoint selection (SP-7), navigate to the waypoint, and press LP-GREEN.
- Use T9 keypad entry.

You can also manage waypoints from the **RMS → GPS tab.**

**Note:** RMS uses signed decimal degrees (up to 5 decimal places) for latitude/longitude.

## nicFW880 ALPHA 3A Update

- Time zone negative rollover fixed
- Added 'PIN Action' menu to 'Advanced' menu category
  - Set to 'Startup' to force PIN entry on power up.
- GPS: Fixed smearing issue on fixed compass rotation mode

## nicFW880 ALPHA 3B Update

- GPS Altitude GEOID correction
- Fixed 8.33 kHz stepping

## nicFW880 ALPHA 3C Update

- Fixed SP-Red to stop seeking in tuner mode
- Speaker/Amplifier power down after 10 seconds of inactivity
- Finer GPS Altitude GEOID correction system.
- Fixed Automatic modulation and bandwidth for scan presets.
- Fixed serial communication errors (introduced in 3B because I'm a plank)
