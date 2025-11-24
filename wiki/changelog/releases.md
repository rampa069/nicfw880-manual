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
