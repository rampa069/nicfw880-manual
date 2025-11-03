# nicFW880 BETA 07C Release

**Release Date:** 2025-11-02

As always please review previous release notes before asking questions. I do not repeat the features and updates from previous versions in these release posts. Also make sure you're using the RMS that comes from the same release post as the firmware does.

There is NO VIRUS in the downloads. If your system is reporting one then it's a false positive, I don't spread malware and I don't appreciate posts that suggest I do. I'm certainly not spending £500 a year on a darn code signing certificate. Radtel doesn't even do that. And no, there are no suitable free alternatives.

## New in BETA 07?

- Menu 'APRS -> Use VFO' has been renamed to 'APRS -> Enabled'
  - Options are now:
    - **Off** = All APRS functions are disabled.
    - **VFO-A/VFO-B/VFO-C** = Assigns a specific VFO for APRS (not for manual beacons or PTT-ID style beacons i.e. 'APRS TX'). One of these options needs to be set to enable VFO Muting, Filtering and Side Button compatibility. This is the recommended way to operate APRS.
    - **Active VFO** = APRS functions use whatever VFO is currently active. Note: This option will disable the side buttons, EMG button and does not apply filtering. It will also not mute the APRS sounds being received.

- Added two new key/user functions 'TX Power Up' and 'TX Power Down'.

- 'CMS -> Channel Name' menu now also appears in 'Channel -> Channel Name'

- The previous "Default Settings" procedure (power on holding EMG) has changed to "Factory Restore"
  - Now performs a FULL WIPE of all nicFW related areas of the flash storage.

- Added new menu 'Advanced -> Auto Lock'
  - Defines the number of seconds before the keypad automatically locks.
  - 10 seconds is the minimum even though smaller values (1-9) may be set.
  - 0 = Disabled.

- RMS combined codeplug.
  - Note: Power tuning, UI, Fonts & Startup Logo are not parts of the codeplug.
  - Yes yes yes, there's no 'Settings' tab yet. Settings are always in flux between releases so this tab will not be a thing until we're out of BETA. So you'll have to manually apply your settings each major BETA version release, don't cry please.

- Radio side Band Plan editing.
  - Use 'Main Menu -> Band Plan'.
  - This is pretty simple to figure out.

## BETA 07B Update

**What happened to 07A?**
Don't ask, it's in a better place now.

- APRS: Solved the 6 character callsign and 2 character SSID missing character problem.

- APRS: The Mic-E digipeater paths are now regular AX.25, no repeaters seem to recognize Mic-E generic paths, so may as well make them standard.

## BETA 07C Update

- Fixed spurious characters in Band Plan names.

- Band plan index number selection now correctly ends at 19.
  - If you were previously using this and set a value above 19 you have probably corrupted your flash storage. I'd recommend doing a factory restore.

- Potential fix for the "Wrap" lockup issue.
  - This fix is only a guess; as I don't get this problem myself and cannot reproduce it, I cannot test it.
