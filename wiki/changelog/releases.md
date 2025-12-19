# Official Releases Changelog

This is the main changelog for official stable releases of nicFW880.

For development versions, see:
- [BETA Releases](beta-releases.md) - Development testing versions
- [ALPHA Releases](alpha-releases.md) - Early development versions

---

## How to Read This Changelog

Each release entry includes:
- **Version number** and release date
- **Major features** - New functionality added
- **Improvements** - Enhancements to existing features
- **Bug fixes** - Issues resolved
- **Known issues** - Any outstanding problems (if applicable)

---

<!-- New releases will be added below this line, newest first -->

## Version 5.09.02 (December 9, 2025)

This release follows v5.09.01 with APRS beacon timing changes, RMS improvements, and audio fixes.

**Note:** A settings reset is recommended. Without a reset, newly introduced settings may not be initialized properly.

### What's New in v5.09.02

**Beacon Browser Improvements**
- Added button reminder labels to Beacon browser
- Beacons can now be read by the RMS and copied to Waypoints

**Audio Fix**
- Reduced background audio artifact when squelch is on

**APRS Beacon Timing Changes**
- Added 'Menu → APRS → Beacon RX OV' (Beacon RX Override)
  - Allows scheduled beacons to interrupt RX
- **IMPORTANT:** 'Menu → APRS → Beacon Time' is now in **seconds** rather than minutes
  - ⚠️ WARNING: The existing setting is NOT converted to seconds
  - If your old setting was 2 minutes, it will now be 2 seconds
  - You must manually correct this setting after updating
- APRS Beacon minimum time interval lowered to 10 seconds

**RMS Improvements**
- Corrected some CHIRP export actions for non-standard squelch tone modes
- Added a sub-page to the Scanning tab allowing reading of smart scan data
  - Smart scan data can be used to create channels
  - Note: Smart Scan data is volatile and does NOT survive a power cycle

---

## Version 5.09.01 (December 9, 2025)

This is a new major version release with GPS improvements, APRS enhancements, and calibration features.

**Note:** A settings reset is recommended. Without a reset, newly introduced settings and features may not be initialized properly.

### What's New in v5.09.01

**Multi-PTT APRS Behavior**
- When Multi-PTT is active and VFO-B/VFO-C is assigned to APRS, the PTT button for that VFO will return to regular assigned function operation

**GPS Coordinate Display Format**
- Added 'Dec / DegMin' to GPS Functions (LP-0)
- Switches coordinate display format between decimal degrees and degrees/minutes

**GPS QRM Reduction**
- 'Menu → GPS → Off While TX' changed to 'Reduce QRM'
- Now allows reduction of QRM from the GPS chip during TX, RX or both

**S1 Key Fix**
- Attempted fix for spurious activation of key S1 (typically assigned to Squelch Override)
- Addresses user reports of spontaneous squelch override

**Per Band Frequency Calibration**
- Per band frequency calibration offset added
- Calibrate every 50 MHz band step individually with a frequency offset
- Adjustable in the RMS ONLY (not editable from radio)
- Note: The 'XTAL 671' adjustment is applied AFTER per band adjustment

**APRS Beacon History Improvements**
- Beacon history capacity increased from 30 to 50
- Beacon history now works like a queue instead of a rolling list
  - Latest beacon received is always placed at position #1
  - Everything else shifts up
- Beacon history is now saved to flash storage
  - Received beacons persist after power down

**RMS Batch Channel Naming**
- You may now enter a number after '%' to set the start of batch numerical channel names
- Example: Entering 'PMR %15' would start the number from 15 instead of 1

---

## Version 5.08.02C (December 2, 2025)

This release continues the stable v5.08 series with APRS improvements, scope enhancements, and GPS waypoint browser updates.

### What's New in v5.08.02C

**APRS VFO Protection**
- The VFO assigned to APRS will now be locked out from changes
  - To make changes to the APRS VFO you must first unassign it
- The VFO assigned to APRS is not selectable if multiwatch is enabled

**Spectrum Scope Improvements**
- The scope can now be started in channel mode
  - When started, the currently selected channel is copied to VFO mode before the scope starts up

**GPS Waypoint Browser Updates**
- Changed 'Edit Name' key from LP-GREEN to LP-0
- Added function menu (LP-GREEN) to the GPS Waypoint browser

### v5.08.02B Update

**Scanning Enhancements**
- Full display refresh after stopping a scan
- Added "Menu → Scanning → Smart Scan"
  - Increases the number of hits during a VFO scan by prioritizing frequencies that have previously seen activity
  - Trade-off: This will slow down the speed of the underlying sequential scan

### v5.08.02A Update

**Scan Exclusions Fix**
- Fixed issue with scan exclusions not being added to the list correctly

**Menu Changes**
- Renamed 'Menu → Scanning → Ultra Scan' to 'UScan Level'
- Added 'Menu → Scanning → UScan Time'
  - Defines the amount of time in microseconds that Ultra Scan waits after changing frequency before checking the signal level
  - Default: 1500 (do not change unless willing to experiment extensively)
  - Setting this value too low will cause Ultra Scan not to detect anything

**New Feature**
- Added 'Menu → Scanning → Scan Return' by request
  - Defines what happens when a scan is stopped:
    - **Last Signal** - Sets the VFO to the last frequency/channel where a signal was found
    - **Start** - Sets the VFO to the scan's starting frequency or channel
    - **Last Scanned** - Leaves the VFO set to whatever frequency/channel was last scanned

### v5.08.02 Update

**RMS Improvements**
- Scan Exclusions now editable from the RMS

**Unit Changes**
- Imperial distance units changed to Feet/Miles

---

## Version 5.08.01 (November 7, 2025)

🎉 **First Official Stable Release**

This is the first production-ready release of nicFW880, consolidating all features from the extensive BETA development cycle into a stable, tested firmware.

### What's New in v5.08.01

This release was mainly to level things out of beta, but includes several upgrades to functionality.

**Maidenhead Locator System**
- Added support for Maidenhead grid square locator system
- Commonly used in amateur radio for location reporting

**Scrambler Improvements**
- Increased scrambler frequency upper limit to 4500 Hz
- Provides more scrambling options for secure communications

**RMS (Radio Management Software) Enhancements**
- New 'Settings' Tab - comprehensive configuration interface (this was a lot of work)
- New 'Calibration' Tab - streamlined calibration procedures
- In preparation for the first mainstream release

### v5.08.01A Update

**GPS Improvements**
- Added 'Main Menu → GPS → Off While TX'
  - Turns GPS off when you transmit to help reduce audio interference on TX audio

**Reception Enhancements**
- Decreased Long Wave reception limit to 100 kHz

**FM Tuner - "Spirit Box" Sweep Mode**
- Added sweep mode in FM tuner (70-108 MHz)
- LP-0 to start a fast sweep
- Press any key during fast sweep to stop

**RMS Updates**
- CHIRP .csv channel export function

### v5.08.01AA (RMS Update)

**CHIRP Export Improvements**
- Fixed 'N/T' channels export
- 'WFM' and 'WAM' now export correctly as just 'FM' and 'AM'
- Added user dialog when channels have only single side privacy codes set
  - Choose between using cross mode or setting TX and RX privacy codes to the same

**Settings Tab Fixes**
- Fixed 'APRS Popup Time' decimal place issue

### v5.08.01B Update

**Scanning Improvements**
- Improved the "Scan TX Too?" setting
- Fixed issue where channels could be saved back after scanning in a reversed state

**Display Options**
- Added "Menu → Display → Heartbeat Style"
  - Choose between flashing the Green/Red LED or the Keypad

**RMS Channel Management**
- Added "Insert" and "Delete" to channel list right click menu

### v5.08.01C Update

**RT-880 Scan Performance**
- Improved VFO ultra scan speed (optimized for BK4819 chip characteristics)
- Channel scanning now entirely skips any channel that would need to toggle the band relay

**Bug Fixes**
- Fixed Maidenhead locator bug regarding negative longitude/latitude
- Fixed GPS navigation bug with negative longitude locations
  - Many thanks to Wayne WA2N for his help getting to the bottom of this

**New Features**
- Added "Menu → Scan → Save Ignores"
  - Allows excluded frequencies to persist

### Core Features (from BETA cycle)

This release includes all functionality developed through BETA 01-07C:

**Communication Features:**
- Full APRS support with messaging and tracking
- GPS functionality with navigation and waypoints
- DTMF encoding/decoding with preset system
- Multiwatch capability
- Crossband repeater functionality

**Advanced Features:**
- Spectrum scope analyzer
- Si4732 tuner module support (AM/FM/SSB)
- Configurable scanning with multiple modes
- Channel and frequency management

**System Features:**
- Comprehensive menu structure
- Customizable key mappings
- Power management and battery monitoring
- RF calibration tools

### Notes

- This release primarily focused on stabilizing the BETA codebase
- All features have undergone extensive testing
- RMS software includes major updates for better user experience

For detailed development history, see [BETA Releases](beta-releases.md) and [ALPHA Releases](alpha-releases.md).

---

## About Version Numbers

**Official releases** use semantic versioning (1.0, 1.1, 2.0, etc.):
- **Major versions** (1.0 → 2.0): Significant new features or major changes
- **Minor versions** (1.0 → 1.1): New features and improvements
- **Patch versions** (1.1.0 → 1.1.1): Bug fixes and minor tweaks

**Development versions** (BETA/ALPHA) are not production-ready and are used for testing new features.
