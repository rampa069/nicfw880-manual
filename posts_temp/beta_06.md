# nicFW880 BETA 06 Release

**Author:** nicsure
**Date:** 4 hours ago (from compilation date)

**Note:** As always please review previous release notes before asking questions. I do not repeat the features and updates from previous versions in these release posts.

## New in BETA 06

### Manual Beacon Sending
Manual Beacon sending (SP-1 during TX) now possible in regular radio mode.
- No need to go into GPS mode anymore

### Heard Beacon Browser
Heard Beacon browser now accessible from radio mode (User function)

### APRS Improvements

#### Unwrapping of APRS-IS packets
APRS-IS packets are now unwrapped for proper decoding

#### APRS VFO Exclusion
If APRS decoding is disabled, but an APRS VFO is assigned, that VFO will be excluded from multiwatch

### Channel Scan
Channel scan now no longer causes the HF relay to toggle
- The first channel scanned defines if the scan is operating in HF or non-HF

### Weather Packets
Weather packets should now be decoded
- Weather popup added
- User function for recalling weather data

### Spectrum Scope Function Menu

#### Set Trigger
Set Trigger now does something:
- If no trigger is set, it sets one at level 6
- If a trigger is set it clears it

#### Added Set Ignore (SP #)
New function to set ignore/exclusion directly from the function menu

#### Added Freq → VFO (PTT)
Transfer current frequency from scope to active VFO by pressing PTT

---

**Source:** [nicsure on Patreon](https://www.patreon.com/c/nicsure/posts)
