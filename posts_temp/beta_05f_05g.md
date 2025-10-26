# BETA 05F / 05G

## What's New in 05F?

### Remote Button Labels (T9 and others)
Added T9 (and related) labels to the remote buttons in the RMS for improved usability.

### Mixed VFO Support in Multiwatch
Previously, mixing HF and non-HF VFOs in Multiwatch was disallowed because it caused rapid switching of the HF band-switch relay (annoying noise and extra relay wear).
Now the HF band-switch relay is suppressed during Multiwatch checks so the active VFO is dominant for relay state. Mixed VFOs can be used; any VFOs that would require toggling the relay are skipped during checks.

### APRS Updates:
- RAW GPS (NMEA) Beacon decoding implemented.
- Standard APRS Beacon decoding implemented.
- Compressed APRS Beacon decoding implemented.
- Fixed: Unsquelched reception during APRS pop-ups when Hear Tones is enabled.

### Spectrum Scope improvements:
Now has its own function menu.
LP-Green

Monitor signal trigger added (note: a regular scan is still the better tool for doing this, but the trigger is here for completeness).
To activate use LP 0-9 to set a trigger level (LP-0 = Disable).
A blue line will appear on the scope to show the trigger level.

Added FM, AM, DSB functions to the scope key functions.
- LP S1 = FM
- LP S2 = AM
- LP EMG = DSB
Also selectable via the function menu.

The Main Menu can now be accessed during Scope operation.

### Tuner mode scanning:
- Scanning will not start until the user releases the LP key (LP1 or LP3). Scanning is paused while a key is pressed, which also helps avoid overruns when stopping scans.
- Scanning speed improved.

## BETA 05G Update

- Ignore/exclude frequency in spectrum scope monitor mode (same as when scanning; press # while monitoring to exclude)
- Fixed issue with scope settings resetting after closing menus.
- Exit scope during monitoring and remain on the monitored frequency by pressing PTT.
- Added "Clear Ignores" key function to scope.
- Fixed issue of modulation changes in the scope "sticking" after exiting the scope.
- GPS distance calculation now corrects for latitude. (Longitude lines "squash" together as you get closer to the poles)
- Preventing the scope starting when in channel based modes.
- Removed "Beacon TX" to prevent confusion, as people don't seem to understand its purpose.

**Note:** Continue to use RMS 05F with this update.

## Downloads
- nicfw880_BETA_05F.bin
- nicfw880_BETA_05G.bin
- RMS downloads (OSX, Windows x86/x64/arm64, Linux x64/arm64/arm)
