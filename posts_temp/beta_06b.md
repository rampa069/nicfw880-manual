# nicFW880 BETA 06B Release

**Author:** nicsure
**Date:** 4 days ago

---

As always please review previous release notes before asking questions. I do not repeat the features and updates from previous versions in these release posts. Also make sure you're using the RMS that comes from the same release post as the firmware does. No matter how many times I say this, it doesn't seem to sink in.

There is NO VIRUS in the downloads. If your system is reporting one then it's wrong, I don't spread malware. I'm certainly not spending £500 a year on a code signing certificate not to mention the hardware that needs to go with it, Radtel doesn't even do that.

## New in BETA 06B

### Manual Beacon sending (SP-1 during TX)
Manual Beacon sending now possible in regular radio mode. No need to go into GPS mode anymore.

### Heard Beacon browser
Heard Beacon browser now accessible from radio mode. (User function)

### APRS-IS Unwrapping
Unwrapping of APRS-IS packets.

### APRS VFO Multiwatch Exclusion
If APRS decoding is disabled, but an APRS VFO is assigned, that VFO will be excluded from multiwatch.

### Channel Scan HF Relay
Channel scan now no longer causes the HF relay to toggle. This means the first channel scanned defines if the scan is operating in HF or non-HF.

### Weather Packets
Weather packets should now be decoded.

Weather popup and user function for recalling weather data.

### Scope Function Menu
- **Set Trigger** now does something:
  - If no trigger is set, it sets one at level 6
  - If a trigger is set it clears it
- **Added Set Ignore** (SP #)
- **Added Freq → VFO** (PTT)
