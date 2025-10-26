# nicFW880 BETA 04E Update

## ⚠️ APRS Is in EARLY STAGE
This means it's not going to perform like other radios' APRS systems ... YET!!!

It takes time to get all of this right and these releases are incremental as features are added, meant primarily for testing before moving onto the next phase. So don't post complaining that it doesn't do this or it doesn't do that. I am not Superman, I cannot do everything all at once, please have some patience and read the release posts BEFORE POSTING.

## ⚠️ Important ⚠️
This update introduces new settings. Since it's not a major version, there's no automatic settings reset. To apply defaults correctly, you must power on the radio after flashing the firmware with the 'EMG' button held down.

The screen should display "DEFAULT SETTINGS" for a moment before booting normally.

**If you skip this step, new settings may have unpredictable values and could cause issues.**

**Wait for the red triangle to disappear before proceeding.**

**For now, continue using the existing RMS BETA04 version alongside this update.**

The RMS can be downloaded [HERE]

## New GPS Module Functions

### GPS Sync has changed location
- Previously found at Main Menu -> Time -> GPS Sync
- Now at **Main Menu -> GPS -> Enabled**
- **This must now be ON for any GPS functions to work**
- If turned off, the radio will use fixed GPS locations (see below)

### APRS Beacon with PTT:
While PTT is engaged, a short press of 'S1' will send an APRS location beacon.

### Default GPS Waypoint:
- Waypoint 99 is the default location.
- If GPS is turned off or the radio is non-GPS, this waypoint will load at startup as the current location.
- You can set any waypoint as the current location by long-pressing 'RED' while browsing waypoints.

## APRS Sending (Receiving Coming Soon)

APRS sending works on all models, they do not need to be GPS capable.

New settings are available under **Main Menu -> APRS:**

### APRS Deviation:
Controls the loudness of the APRS data. Defaults are typically fine, but feel free to tweak for your radio.

### Beacon Time:
Minutes between location beacon transmissions.

### Beacon Distance (metres):
Sends a beacon if the radio has traveled beyond this distance since the last transmission.

### Beacon TX:
Sends APRS beacons at the start and/or end of PTT.
- Uses the existing DTMF Start Delay to control timing; no separate setting is needed.
- Works only in regular radio mode, not GPS module mode.

### Beacon Comment:
Add a custom comment (up to 24 characters) with each beacon.

### Callsign:
Set your callsign here.

### Hear Tones:
Normally APRS data isn't audible. Enable this to hear it for diagnostic purposes.

**Note:** APRS and GPS is far from complete. More functions and settings will be added in future releases.

⚠️ **Auto-transmitted beacons triggered by Beacon Time or Beacon Distance are throttled to one per minute.**

## nicFW880 BETA 04E Update (Experimental)

This now supports **APRS decoding**, but it is VERY basic and rudimentary. It just pops up some info when it receives a packet and that's it. There's still a lot of work to do on the APRS infrastructure here, this is just to let users test the decoding system.

**Remember to turn on MainMenu -> APRS -> Decode**

Also remember the problem with squelch override. There's no solution to that yet.

**Fixed issues with radio lockup.**
