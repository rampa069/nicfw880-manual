# BETA Releases Changelog

Complete version history from BETA 01 to BETA 05G (oldest to newest).

---

## BETA 01 (September 15)

### IMPORTANT: Supported Hardware

**Supported radios:**
- Radtel RT-880
- Radtel RT-880G
- iRadio UV-98 Plus (serial numbers > 300)

**Not supported:**
- Sub-300 serial number radios (may work with UV-98 model selection during flashing, but not verified)
- Early iRadio UV-98 models (hardware differences, no longer manufactured)

### DTMF Preset System

**Default DTMF Menu Open Key:** SP-S2 (configurable)

**DTMF Preset Menu Controls:**
- Up / Down: Browse presets
- Red: Exit menu
- Green / PTT: Select and begin transmitting
- 0–9: Enter DTMF preset number
- Long Press Green: Edit DTMF preset name

**Main Menu – DTMF Category:**
- Deviation: Controls loudness of DTMF tones
- Digit Time: Duration (ms) each digit is transmitted
- Gap Time: Silence (ms) between digits
- Start Pause: Delay (ms) after transmit is engaged before tones begin
- Preset: Edit stored DTMF digit sequences

**Editing Preset DTMF Digits:**
- 0–9: Enter digits 0–9
- Green, Up, Down, Red: Enter DTMF digits A, B, C, D
- *, #: Enter Star (*) and Hash (#)
- PTT: Confirm entry
- S1: Backspace
- S2: Abort entry

**Notes:**
- Entering blank/empty sequence deletes/deallocates the slot
- Menu only opens if at least one valid preset saved and TX is permitted

### PTT ID

DTMF Preset #99 is used for the PTT ID sequence.

### Extras

- Added long-press action to copy currently selected channel to VFO
- Increased scanning speed
- Numerous tweaks and fixes based on ALPHA 19 feedback

### To Do

GPS, APRS & DTMF Decoding functions to be added in future release.

---

## BETA 02 (September 19-26)

### DTMF Decoding 🔢

Decoded DTMF digits temporarily replace Group Name on screen.

**Decoding options:**
- **Off:** No decoding
- **On:** Enable decoding only
- **P-ID:** Match heard sequences against presets and display their names

**Display For:** How long (in seconds) detected digits are shown

**SeqEnd Pause:** Pause (in seconds) after detected digit, marking end of sequence

### DTMF Preset Speed Dial ⚡

**New User Key function:** "DTMF Speed Dial"

Assign to a key, long-pressing transmits corresponding DTMF preset.

**Example:** If LP-2 is set to DTMF Speed Dial, holding 2 transmits preset #2.

### Si4732 Tuner Module 📻

Function selection menu added.

⚠️ **Important:** Key definitions for this module have changed.

**Short Press Keys:**
- EMG → Toggle Day/Night display
- * / # → Adjust BFO
- 0–9 → Enter frequency
- Up/Down → Step VFO frequency / channel number / seek direction
- Green → Open Main Menu
- S1 → Change Band
- S2 → Change Modulation
- Red → Toggle VFO/Channel mode

**Long Press Keys:**
- 1 / 3 → Seek Down/Seek Up
- 2 → Reset BFO to 0
- 4 → Enter new frequency step
- 5 → Toggle S-Meter (reduces interference)
- 6 → Toggle squelch (WFM only)
- 7 → Enable/disable scope (>18 MHz, dual antennas required)
- 8 → Toggle power line filter
- 9 → Toggle AM bandwidth
- Red → Exit tuner mode
- Green → Function list selection menu

### GPS 🛰️

New User Key function: "GPS" added.

Currently diagnostic tool displaying:
- Latitude / Longitude / Altitude
- Satellite count
- Speed & heading
- Time

### BETA 02A: GPS Module Update 🚀

- GPS Compass mode
- Real Time Clock (check "Time" menu category)
- Velocity displayed in knots, mph, or kph

**Handy key controls when GPS is active:**
- 🔴 RED: Exit GPS module
- #️⃣ #: Toggle raw data ↔ compass mode view
- ✴️ *: Switch between cardinal rotation ↔ pointer rotation
- 9️⃣ 9: Cycle through knots ↔ mph ↔ kph

### BETA 02B

- Fixed Settings saving problem

### Coming Soon 🌌

- GPS targets & tracking
- Save current location as target
- Transmit location to another radio (via DTMF)
- Radar-style target blips

---

## BETA 03 (September 26)

### macOS Versions of RMS

Provided on "compile and hope" basis. No direct support available.

May require advanced steps (removing quarantine flags, adjusting file permissions).

### Unsupported iRadio Models

Early iRadio models not compatible:
- Screen turns white (instead of black) during firmware flashing
- Hardware differences in LCD backlight

### PIN Lockout 🔒

Secure device with PIN.

**Setup:** Main menu Advanced → PIN

When enabled, once keypad locked, cannot unlock until correct PIN entered.

### Wake Screen Options 🌙

Configure what wakes display under **Wake LCD On:**
- **Keys Only:** Only key presses wake screen
- **RX:** Received signal or key press wakes screen
- **TX:** Transmit or key press wakes screen
- **All:** Any event wakes display

### HT Monitor in Si4732 Tuner Mode 📡

If Multiwatch enabled, VFOs don't mix HF and VHF/UHF, and scope disabled in tuner mode:
- Any received signal on VFOs temporarily interrupts tuner
- Switches back to HT mode
- After configured MW Pause, Si4732 mode resumes automatically

### 24/12-Hour Clock Option 🕒

Under **Time → Format**, choose between 24-hour and 12-hour display.

**Note:** In 12-hour mode, AM/PM replaces day of week to save space.

### GPS Update with Waypoints 🧭

Major GPS addition!

**Starting GPS:** No default key — configure user key or access via radio mode function menu (default: LP-GREEN)

GPS starts in Data Mode, showing raw GPS data.

**Function Keys:**
- SP-GREEN: Open main menu
- SP-#: Toggle Data Mode / Tracker Mode
- SP-*: Switch compass rotation mode
- SP-7: Open waypoint selection (requires at least one saved waypoint)
- SP-9: Toggle units (Imperial, Nautical, Metric)
- SP-RED: Exit GPS module

**Long-Press Keys (LP):**
- LP-GREEN: GPS function menu
- LP-1: Set tracking radius
- LP-4: Set target to current location
- LP-5: Clear target

**Managing Waypoints:**

To save waypoint:
1. Use LP-4 to set target
2. Open main menu (SP-GREEN) → GPS category → Point Save
3. Choose unused slot, press SP-GREEN to save

To rename:
- Open waypoint selection (SP-7), navigate to waypoint, press LP-GREEN
- Use T9 keypad entry

Can also manage waypoints from RMS → GPS tab.

**Note:** RMS uses signed decimal degrees (up to 5 decimal places) for latitude/longitude.

### BETA 3A Update

- Time zone negative rollover fixed
- Added 'PIN Action' menu to 'Advanced' category (Set to 'Startup' to force PIN entry on power up)
- GPS: Fixed smearing issue on fixed compass rotation mode

### BETA 3B Update

- GPS Altitude GEOID correction
- Fixed 8.33 kHz stepping

### BETA 3C Update

- Fixed SP-Red to stop seeking in tuner mode
- Speaker/Amplifier power down after 10 seconds of inactivity
- Finer GPS Altitude GEOID correction system
- Fixed Automatic modulation and bandwidth for scan presets
- Fixed serial communication errors (introduced in 3B)

---

## BETA 04 (September 28)

### macOS RMS

Available from GitHub: https://github.com/nicsure/nicfw880-rms-builder/releases/tag/BETA04

Thanks to Ramon Martinez! 🙏

**BAUD must be set to 38400 at all times.**

### What's New in BETA 04? ✨

- Added new User Key function: **DTMF Enter** (Transmits single-use DTMF sequence)
- Updated velocity readouts: "kph" → "km/h"
- GPS units, rotation, and range now save to storage
- Fixed another smearing issue in GPS compass/pointer rotation modes
- **Allow rudimentary RX/TX while GPS module is active**
  - Uses whatever VFO was active when GPS module started
  - Note: RUDIMENTARY RX/TX, no extra features like Multiwatch
- New option: Enable/disable clock display (Main Menu → Time → Enable)
- RMS macOS App Bundling supported
- RMS integration with OpenStreetMap.org

### BETA 04A Update

- Fixed speaker muting in Si4732 tuner mode
- **Added DTMF broadcast of location in GPS module**
  - Press PTT (if allowed) then S2 to transmit location
  - Receiving radio must be in GPS module with no waypoint selected
- **Implemented editing of Waypoint coordinates in GPS Waypoint menu**
  - LP-1: Edit Latitude degrees
  - LP-2: Edit Longitude degrees
  - LP-4: Change Latitude sign (toggle positive/negative)
  - LP-5: Change Longitude sign

---

## BETA 04E (October 4)

### ⚠️ APRS Is in EARLY STAGE

Not going to perform like other radios' APRS systems... YET! Incremental releases for testing.

### ⚠️ Important Settings Reset

This update introduces new settings. Power on radio after flashing with **'EMG' button held down**.

Screen should display "DEFAULT SETTINGS" for moment before booting normally.

**Wait for red triangle to disappear before proceeding.**

**Continue using existing RMS BETA04 version.**

### New GPS Module Functions

**GPS Sync location changed:**
- Previously: Main Menu → Time → GPS Sync
- Now: **Main Menu → GPS → Enabled**

**This must be ON for any GPS functions to work.**

If turned off, radio will use fixed GPS locations.

**APRS Beacon with PTT:**
While PTT engaged, short press **S1** sends APRS location beacon.

**Default GPS Waypoint:**
- Waypoint 99 is default location
- If GPS off or radio is non-GPS, this waypoint loads at startup as current location
- Set any waypoint as current location by long-pressing RED while browsing waypoints

### APRS Sending (Receiving Coming Soon)

Works on all models (GPS capability not required).

**New settings under Main Menu → APRS:**

- **APRS Deviation:** Controls loudness of APRS data
- **Beacon Time:** Minutes between location beacon transmissions
- **Beacon Distance (metres):** Sends beacon if traveled beyond this distance since last transmission
- **Beacon TX:** Sends APRS beacons at start/end of PTT
  - Uses existing DTMF Start Delay for timing
  - Works only in regular radio mode, not GPS module mode
- **Beacon Comment:** Custom comment (up to 24 characters) with each beacon
- **Callsign:** Set your callsign
- **Hear Tones:** Normally APRS data isn't audible. Enable for diagnostic purposes

⚠️ **Auto-transmitted beacons triggered by Beacon Time or Distance throttled to one per minute.**

### BETA 04E Update (Experimental)

**APRS decoding support** - VERY basic and rudimentary. Just pops up info when packet received.

**Remember to turn on MainMenu → APRS → Decode**

Also remember problem with squelch override. No solution yet.

**Fixed issues with radio lockup.**

---

## BETA 04F (October 13)

**IMPORTANT:** Perform settings reset before use.
- Hold EMG while powering on
- Wait for red triangle to vanish after power on

**Use BETA 04 RMS**

**Note:** Lots of work and new code. Almost certainly going to have some issues, don't expect 100% right away.

### MIC-E Beacon System

Configure via → APRS Menu

- **SSID:** 0-7 (Sets secondary station ID)
- **Decode:** On/Off/Popup (Enables decoding of received APRS MIC-E packets)
- **Popup Time:** 0.1-9.9 seconds (Time APRS popup stays on screen)
- **Symbol:** ASCII Code (MIC-E Blip Symbol for transmitted packets)
- **Status:** 0-7 (MIC-E ABC Message field)
- **Digipeater Path:** Off, WIDE1-1, WIDE2-2
- **Ambiguity:** 20 m, 200 m, 2 km (Transmitted beacon location accuracy)

**Note:** 20m is best accuracy for MIC-E (1/100th of minute ≈ 18m, rounded up for readability).

### Beacon List

In GPS module, **SP 6** opens "Heard Beacons" list menu (if at least one heard).

**Note:** Heard beacons not retained in storage.

**Controls:**
- UP/DOWN: Browse beacons
- RED: Exit beacon list menu
- GREEN: Set beacon as current target

**To save beacon to waypoints:** Set as current target, then Main Menu → GPS → Save

### Virtual TTNC (KISS Mode)

Transceiver and Terminal Node Controller (TTNC) mode implemented. Virtual TNC operates like physical TNC in KISS mode. Serial KISS data transmitted over regular programming cable at 38400 baud.

Configure via → APRS Menu

- **KISS Mode:** Activate virtual TTNC
- **Persist:** 1 - 255 (Probability X in 255 that queued packet will be sent on clear frequency)
- **Slot Time:** 0-200 milliseconds (Delay time if Persist probability check fails)

### Audio Boost

New menu: **Advanced → Audio Boost**

Incrementally boosts audio gain from radio chip for radios with low amplified audio output.

---

## BETA 05D (October 15)

**Please review previous release notes as items not repeated here.**

### New Icons

Two new icons for APRS and GPS. Custom skins need icon position adjustment. Skins in extras.zip updated.

**GPS Icon:**
- Dish pointing down: GPS enabled, no GPS lock
- Dish pointing up: GPS enabled and locked

**APRS Icon:**
- ■ APRS: APRS decoding enabled
- ■ APRSX: APRS automatic beacons active

### APRS Additions

**Beacon popup/browser shows distance and heading.**

**AX.25 Digipeater:**
Path added. Use "AX.25" in Main Menu→APRS→Digipeater Path

Default digipeater callsign "ARISS", editable at Main Menu→APRS→AX.25 Digipeater

**VFO Selection for APRS:**
Main Menu→APRS→Use VFO

Select specific VFO for automatic beacon APRS operation. Selected VFO displays APRS icon. All automatic beacons sent via this VFO.

VFO muted if Main Menu→APRS→Hear Tones set to Off (mute icon shown).

**Note:** Manual beacons and PTT beacons always sent on active VFO.

### BETA 05A Update

- Fixes AX.25 Digipeater menu not saving changes

### BETA 05B Update

- Fixes minute miscalculation on received beacons
- Mutes microphone during initial pause when sending APRS beacons

### BETA 05C Update

- Fixes short audio burst after received beacon when VFO assigned to APRS and muted
- Fix for side buttons stopping when squelch open while APRS decoding active
  - Requires Main Menu → APRS → Use VFO to be set to A, B or C
  - Do not use squelch override on VFO set for APRS

### BETA 05D Update

- Squelch override cannot be activated on VFO assigned to APRS if Hear Tones set to off
- Switching VFOs now cancels squelch override status (prevents carrying over to APRS VFO and locking side buttons)
- When squelch override active, signal bar displays 'OV' instead of 'RX'

---

## BETA 05E (October ~20)

**Note:** Please read previous release notes if you haven't already, items not repeated.

### Added Remote Tab

**Important:** BOTH firmware 05E and RMS 05E required for this feature.

**Remote tab behavior:**
- When Remote Connection active, no other RMS tabs may be selected
- On startup Remote display doesn't automatically refresh. To force refresh, open and close menu (or otherwise trigger redraw)

### WARNING

RF energy in close proximity to USB programming cable can fry UART chip and crash it, severing link.

Don't post reports like "it stops working when I press PTT."

### Key Mappings (Remote Control)

- 0–9 → 0–9
- . / * → *
- Tab / # → #
- Enter → Green
- Escape / Backspace → Red
- Up / PageUp → UP
- Down / PageDown → DOWN
- Mouse Wheel → UP & DOWN
- F1 → S1
- F2 → S2
- F3 → EMG
- Space → PTT

### Still to Do

- Add more APRS decode formats
- GDO 433 cloning

---

## BETA 05F / 05G (October ~25)

### What's New in 05F?

**Remote Button Labels (T9 and others):**
Added T9 labels to remote buttons in RMS for improved usability.

**Mixed VFO Support in Multiwatch:**
Previously, mixing HF and non-HF VFOs disallowed (rapid relay switching noise and wear).

Now HF band-switch relay suppressed during Multiwatch checks. Active VFO dominant for relay state. Mixed VFOs can be used; VFOs requiring relay toggle are skipped during checks.

**APRS Updates:**
- RAW GPS (NMEA) Beacon decoding implemented
- Standard APRS Beacon decoding implemented
- Compressed APRS Beacon decoding implemented
- Fixed: Unsquelched reception during APRS pop-ups when Hear Tones enabled

**Spectrum Scope improvements:**
- Has own function menu (LP-Green)
- Monitor signal trigger added (LP 0-9 to set trigger level, LP-0 = Disable)
- Blue line shows trigger level
- Added FM, AM, DSB functions to scope keys
  - LP S1 = FM
  - LP S2 = AM
  - LP EMG = DSB
- Also selectable via function menu
- Main Menu can now be accessed during Scope operation

**Tuner mode scanning:**
- Scanning won't start until user releases LP key (LP1 or LP3)
- Scanning paused while key pressed (helps avoid overruns when stopping)
- Scanning speed improved

### BETA 05G Update

- Ignore/exclude frequency in spectrum scope monitor mode (press # while monitoring to exclude)
- Fixed scope settings resetting after closing menus
- Exit scope during monitoring and remain on monitored frequency by pressing PTT
- Added "Clear Ignores" key function to scope
- Fixed modulation changes in scope "sticking" after exiting scope
- GPS distance calculation now corrects for latitude (longitude lines "squash" closer to poles)
- Preventing scope starting when in channel based modes
- Removed "Beacon TX" to prevent confusion

**Note:** Continue to use RMS 05F with this update.

---

## BETA 06

**Important:** As always, please review previous release notes before asking questions. Features and updates from previous versions are not repeated in these release posts.

### New Features and Improvements

**Manual Beacon Sending:**
- Manual Beacon sending (SP-1 during TX) now possible in regular radio mode
- No need to go into GPS mode anymore

**Heard Beacon Browser:**
- Now accessible from radio mode (User function)

**APRS Improvements:**
- Unwrapping of APRS-IS packets implemented
- If APRS decoding is disabled, but an APRS VFO is assigned, that VFO will be excluded from multiwatch

**Channel Scan:**
- Channel scan no longer causes the HF relay to toggle
- The first channel scanned defines if the scan is operating in HF or non-HF mode

**Weather Packets:**
- Weather packets should now be decoded
- Weather popup added
- User function for recalling weather data

**Spectrum Scope Function Menu:**
- **Set Trigger** now functional:
  - If no trigger is set, it sets one at level 6
  - If a trigger is set, it clears it
- **Added Set Ignore** (SP #)
- **Added Freq → VFO** (PTT)

---

## BETA 06A

### Fixes

**APRS Squelch Override Fix:**
- Fixed squelch override engaging when PTT is released before a manual APRS packet has finished transmitting

### New Features

**AF Filter for APRS VFO:**
- Added AF Filter to use specifically when a signal is received on the APRS assigned VFO
- **Path:** Main Menu → APRS → Filter
- Allows filtering of audio specifically for APRS reception

**Note:** Continue to use RMS BETA 06 with this version.

---

## BETA 06B

### APRS Enhancements

**Manual Beacon in Radio Mode:**
- Manual Beacon sending (SP-1 during TX) now possible in regular radio mode
- No need to go into GPS mode anymore

**Heard Beacon Browser:**
- Heard Beacon browser now accessible from radio mode (User function)

**APRS-IS Unwrapping:**
- Unwrapping of APRS-IS packets implemented

**Weather Packets:**
- Weather packets should now be decoded
- Weather popup and user function for recalling weather data

**APRS VFO Multiwatch Exclusion:**
- If APRS decoding is disabled, but an APRS VFO is assigned, that VFO will be excluded from multiwatch

### Scanning Improvements

**Channel Scan HF Relay:**
- Channel scan now no longer causes the HF relay to toggle
- The first channel scanned defines if the scan is operating in HF or non-HF

### Spectrum Scope Function Menu

**Set Trigger:**
- Now functional: If no trigger is set, it sets one at level 6
- If a trigger is set it clears it

**Added Set Ignore:**
- Accessible via SP-# key

**Added Freq → VFO:**
- Accessible via PTT key

---

## BETA 07

### APRS Menu Restructure

**APRS → Enabled (formerly "Use VFO"):**
- Menu renamed from "Use VFO" to "Enabled"
- **Off:** All APRS functions disabled
- **VFO-A/VFO-B/VFO-C:** Assigns specific VFO for APRS (recommended)
  - Enables VFO Muting, Filtering, and Side Button compatibility
  - Does not affect manual beacons or PTT-ID style beacons
- **Active VFO:** APRS uses currently active VFO
  - Disables side buttons and EMG button
  - Does not apply filtering or mute APRS sounds

### TX Power Control

**New Key/User Functions:**
- **TX Power Up:** Increase transmit power
- **TX Power Down:** Decrease transmit power

### Menu Improvements

**Channel Name Menu:**
- 'CMS → Channel Name' menu now also appears in 'Channel → Channel Name'

### System Changes

**Factory Restore:**
- Previous "Default Settings" procedure (power on holding EMG) renamed to "Factory Restore"
- Now performs FULL WIPE of all nicFW related areas of flash storage

**Auto Lock:**
- New menu: 'Advanced → Auto Lock'
- Defines number of seconds before keypad automatically locks
- Minimum: 10 seconds (smaller values 1-9 may be set but treated as 10)
- 0 = Disabled

### RMS Features

**Combined Codeplug:**
- RMS now supports combined codeplug
- Note: Power tuning, UI, Fonts & Startup Logo are not part of codeplug
- Settings tab not available until out of BETA

**Band Plan Editing:**
- Radio-side Band Plan editing added
- **Path:** Main Menu → Band Plan

### BETA 07B Update

**What happened to 07A?**
Don't ask, it's in a better place now.

**APRS Improvements:**
- Solved the 6 character callsign and 2 character SSID missing character problem
- Mic-E digipeater paths are now regular AX.25
  - No repeaters seem to recognize Mic-E generic paths, so made them standard

---

## BETA 07C

### Bug Fixes

**Band Plan Fixes:**
- Fixed spurious characters in Band Plan names
- Band plan index number selection now correctly ends at 19
  - ⚠️ **Warning:** If you previously set a value above 19, you may have corrupted your flash storage
  - Recommendation: Perform a factory restore

**Stability Improvements:**
- Potential fix for the "Wrap" lockup issue
  - Note: This fix is a guess as the developer cannot reproduce the issue locally

---

## 🎉 Official Release

**BETA cycle concluded with v5.08.01 Release (November 7, 2025)**

All BETA features have been consolidated into the first official stable release. See [Official Releases](releases.md) for details.

The BETA development cycle ran from September to November 2025, introducing and testing all major features that are now part of the stable firmware.

---

**End of BETA Releases**

For information on specific features, see the [User Guides](../guides/) section.
