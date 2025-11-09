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

### What's New in This Release

**Maidenhead Locator System**
- Added support for Maidenhead grid square locator system
- Commonly used in amateur radio for location reporting

**Scrambler Improvements**
- Increased scrambler frequency upper limit to 4500 Hz
- Provides more scrambling options for secure communications

**RMS (Radio Management Software) Enhancements**
- New 'Settings' Tab - comprehensive configuration interface
- New 'Calibration' Tab - streamlined calibration procedures
- Significant preparation work for mainstream release

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
