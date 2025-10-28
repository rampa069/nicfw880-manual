# nicFW880 BETA 06A Release

**Author:** nicsure
**Date:** Yesterday (from compilation date)

**Note:** As always please review previous release notes before asking questions. I do not repeat the features and updates from previous versions in these release posts. Also make sure you're using the RMS that comes from the same release post as the firmware does. No matter how many times I say this, it doesn't seem to sink in.

## Important Notes

**About Antivirus Warnings:**
There is NO VIRUS in the downloads. If your system is reporting one then it's wrong, I don't spread malware. I'm certainly not spending £500 a year on a code signing certificate not to mention the hardware that needs to go with it, Radtel doesn't even do that.

**Windows x86 and x64 versions:**
The Windows x86 and x64 versions compile the application as a .dll file. You will need to rename:
- `NicFW880_RMS.dll` to `NicFW880_RMS.exe`

Remember that Windows by default hides file extensions, everyone with any Windows smarts should have already turned that off (it's one of the first things I do when I install Windows).

## New in BETA 06

### Manual Beacon Sending
Manual Beacon sending (SP-1 during TX) now possible in regular radio mode.
- No need to go into GPS mode anymore

### Heard Beacon Browser
Heard Beacon browser now accessible from radio mode (User function)

### APRS Improvements
- Unwrapping of APRS-IS packets
- If APRS decoding is disabled, but an APRS VFO is assigned, that VFO will be excluded from multiwatch

### Channel Scan
Channel scan now no longer causes the HF relay to toggle. This means the first channel scanned defines if the scan is operating in HF or non-HF.

### Weather Packets
- Weather packets should now be decoded
- Weather popup and user function for recalling weather data

### Scope Function Menu

**Set Trigger** now does something:
- If no trigger is set, it sets one at level 6
- If a trigger is set it clears it

**Added Set Ignore (SP #)**

**Added Freq → VFO (PTT)**

## BETA 06A Update

### Fixed
Fixed squelch override engaging when PTT is released before a manual APRS packet has finished transmitting.

### Added
Added AF Filter to use specifically when a signal is received on the APRS assigned VFO.
- **Path:** Main Menu → APRS → Filter

**Note:** Continue to use RMS BETA 06 with this version.

---

**Source:** [nicsure on Patreon](https://www.patreon.com/c/nicsure/posts)
