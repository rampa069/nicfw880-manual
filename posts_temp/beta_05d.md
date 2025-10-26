# nicFW880 BETA 05D

**Note:** Please review the previous releases notes as items are not repeated here.

## New Icons

There are two new icons for APRS and GPS added. If you use a custom skin you'll need to adjust the positions of the icons. The skins in the extras.zip file have been updated.

### GPS Icon
This icon has two states:
- **Dish pointing down** - GPS functionality is enabled, but no GPS lock is acquired.
- **Dish pointing up** - GPS is enabled and locked.

## APRS Additions

### Beacon popup/browser
Now shows distance and heading.

### APRS Icon
The APRS Icon has two states:
- **■ APRS** - APRS decoding is enabled.
- **■ APRSX** - APRS automatic beacons are active.

### AX.25 Digipeater
Path added. Use "AX.25" in:
- Main Menu->APRS->Digipeater Path

The default digipeater callsign is "ARISS" but this can be edited:
- Main Menu->APRS->AX.25 Digipeater

### VFO Selection for APRS
You may now select a specific VFO for automatic beacon APRS operation with:
- Main Menu->APRS->Use VFO

When set, the VFO selected will display an APRS icon. All automatic beacons will be sent via this VFO.

This VFO will be muted if:
- Main Menu->APRS->Hear Tones is set to Off.

A mute icon will also be shown on the VFO.

**Note:** Manual beacons and PTT beacons are always sent on the active VFO.

## BETA 05A Update
- Fixes the issue of the AX.25 Digipeater menu not saving changes.

## BETA 05B Update
- Fixes the minute miscalculation on received beacons.
- Mutes the microphone during the initial pause when sending APRS beacons.

## BETA 05C Update
- Fixes the short audio burst after a received beacon when the VFO is assigned to APRS and muted.
- Fix for the side buttons stopping working when squelch is open while APRS decoding is active.
  - **Note:** This requires Main Menu -> APRS -> Use VFO to be set to A, B or C.
  - **Do not use squelch override on the VFO that's set for APRS**

## BETA 05D Update
- Squelch override can no longer be activated on a VFO assigned to APRS use if Hear Tones is set to off.
- Switching VFOs now cancels squelch override status. This is to prevent it carrying over to the APRS assigned VFO and locking the side buttons.
- When squelch override is active the 'RX' that was shown in the signal bar areas now displays 'OV'
