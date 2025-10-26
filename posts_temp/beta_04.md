# nicFW880 BETA 04 Release 🚀

## macOS Versions of the RMS

macOS builds of the RMS are provided on a "compile and hope" basis. Since I don't have the ability to test or verify them, please don't expect direct support if issues arise. Any problems on macOS will need to be worked out within the community.

That said, an experienced macOS user has confirmed these versions do work, but with a few caveats:

- **BAUD must be set to 38400 at all times.**
- You may need to take extra steps like removing quarantine flags or adjusting file permissions.

If you're comfortable with those procedures, feel free to dive in.

👉 The MacOS versions of the RMS can be downloaded from GitHub.

**Link:** https://github.com/nicsure/nicfw880-rms-builder/releases/tag/BETA04

A huge thanks to Ramon Martinez for setting this up for everyone! 🙏

## Unsupported iRadio Models

Some early iRadio models are not compatible with nicFW. A quick way to spot them: during firmware flashing, the screen turns white instead of black.

This happens due to hardware differences in the LCD backlight, which prevent nicFW880 from functioning correctly. Unfortunately, since these devices are long out of production, I can't obtain one for testing, so they remain unsupported.

## What's New in BETA 04? ✨

- Added new User Key function: **DTMF Enter**
  - Transmits a single-use DTMF sequence.

- Updated velocity readouts: "kph" → "km/h"

- GPS units, rotation, and range now save to storage

- Fixed another smearing issue in GPS compass/pointer rotation modes

- **Allow rudimentary RX/TX while GPS module is active**
  - Uses whatever VFO was active when the GPS module was started.
  - **Note:** This is RUDIMENTARY RX/TX, there's no extra features such as Multiwatch running.

- New option: **Enable/disable clock display**
  - Path: Main Menu → Time → Enable

- RMS macOS App Bundling now supported

- RMS integration with OpenStreetMap.org

## nicFW880 BETA 04A Update

- Fixed speaker muting in Si4732 tuner mode.

- **Added DTMF broadcast of location in GPS module.**
  - Press PTT (assuming PTT is allowed) and then press S2 to transmit location.
  - Receiving radio must be in the GPS module and have no waypoint selected.

- **Implemented editing of Waypoint coordinates in the GPS Waypoint menu**
  - While the Waypoint menu is open and the required Waypoint is shown:
    - **LP-1** = Edit Latitude degrees
    - **LP-2** = Edit Longitude degrees
    - **LP-4** = Change Latitude sign (toggle positive/negative)
    - **LP-5** = Change Longitude sign
