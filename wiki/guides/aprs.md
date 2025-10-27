# APRS System Guide

## Overview

The APRS (Automatic Packet Reporting System) functionality was introduced in BETA 04E and has been continuously improved through BETA 06. APRS allows you to send and receive location beacons and other packet data.

**First introduced:** BETA 04E
**Latest updates:** BETA 06

⚠️ **Important:** APRS is in continuous development. Features are added incrementally.

## Supported Features

### Beacon Decoding (BETA 05F+)
- RAW GPS (NMEA) Beacon decoding
- Standard APRS Beacon decoding
- Compressed APRS Beacon decoding
- MIC-E Beacon decoding (BETA 04F+)
- APRS-IS packet unwrapping (BETA 06)
- Weather packet decoding (BETA 06)

### Beacon Transmission
- Manual beacons (PTT + S1, or SP-1 during TX in BETA 06+)
- Automatic beacons (time-based or distance-based)
- PTT beacons (start/end of transmission)

### Heard Beacon Browser (BETA 06+)
- Access received APRS beacons from radio mode (User function)
- View weather data from received weather packets

## Configuration

### Main Menu → APRS

#### Callsign
Set your amateur radio callsign.

#### SSID: 0-7
Sets secondary station ID.

#### Decode: On/Off/Popup
- **Off:** No APRS decoding
- **On:** Decode but don't show popup
- **Popup:** Show received beacons as popup

#### Popup Time: 0.1-9.9 seconds
Duration APRS popup stays on screen.

#### Symbol: ASCII Code
MIC-E Blip Symbol for transmitted packets.

#### Status: 0-7
MIC-E ABC Message field (status).

#### Beacon Comment
Add a custom comment (up to 24 characters) with each beacon.

#### Beacon Time (minutes)
Minutes between automatic location beacon transmissions.

#### Beacon Distance (metres)
Sends a beacon if the radio has traveled beyond this distance since the last transmission.

⚠️ **Note:** Auto-transmitted beacons triggered by Beacon Time or Beacon Distance are throttled to one per minute.

#### APRS Deviation
Controls the loudness of the APRS data. Defaults are typically fine, but can be adjusted for your specific radio.

#### Hear Tones: On/Off
Normally APRS data isn't audible. Enable this to hear it for diagnostic purposes.

**Fixed in 05F:** Unsquelched reception during APRS pop-ups when Hear Tones is enabled.

### Digipeater Settings

#### Digipeater Path
Options: **Off**, **WIDE1-1**, **WIDE2-2**, **AX.25**

When using "AX.25":
- Default digipeater callsign is "ARISS"
- Can be edited at: Main Menu → APRS → AX.25 Digipeater

#### Ambiguity: 20 m, 200 m, 2 km
Transmitted beacon location accuracy.

**Note:** 20m is the best accuracy for MIC-E, which has a resolution of 1/100th of a minute (about 18m).

### VFO Selection for APRS (BETA 05D+)

**Path:** Main Menu → APRS → Use VFO

You may select a specific VFO (A, B, or C) for automatic beacon APRS operation.

When set:
- The selected VFO will display an APRS icon
- All automatic beacons will be sent via this VFO
- This VFO will be muted if "Hear Tones" is set to Off (mute icon shown)

⚠️ **Important:**
- Manual beacons and PTT beacons are always sent on the active VFO
- Do not use squelch override on the VFO that's set for APRS (BETA 05C+)
- Squelch override cannot be activated on a VFO assigned to APRS if Hear Tones is off (BETA 05D)
- If APRS decoding is disabled but an APRS VFO is assigned, that VFO will be excluded from multiwatch (BETA 06)

## APRS Icons

### GPS Icon (BETA 05D+)
- **Dish pointing down:** GPS functionality enabled, but no GPS lock
- **Dish pointing up:** GPS enabled and locked

### APRS Icon (BETA 05D+)
- **■ APRS:** APRS decoding is enabled
- **■ APRSX:** APRS automatic beacons are active

## Beacon List (BETA 04F+)

### Accessing Heard Beacons

**GPS Module (BETA 04F+):**
In the GPS module, **SP-6** opens the "Heard Beacons" list menu (requires at least one beacon heard).

**Radio Mode (BETA 06+):**
Heard Beacon Browser now accessible from radio mode via User function.

⚠️ **Note:** Heard beacons are not retained in storage.

### Controls:
- **UP/DOWN:** Browse heard beacons
- **RED:** Exit beacon list menu
- **GREEN:** Set beacon as current target

### Beacon Display (BETA 05D+)
Beacon popup/browser now shows:
- Distance to beacon
- Heading to beacon

### Weather Packets (BETA 06+)

**Weather Packet Decoding:**
The radio now decodes APRS weather packets and displays weather data.

**Features:**
- Weather popup displays decoded weather information
- User function available for recalling weather data
- Integrates with Heard Beacon Browser

**Accessing Weather Data:**
Use the User function to recall weather data from received weather packets.

### Saving Beacons
To save a beacon to waypoints:
1. Use beacon list menu to set it as current target (GREEN)
2. Main Menu → GPS → Save

## Manual APRS Beacon

### PTT Beacon (BETA 04E+)
While PTT is engaged, short press **S1** to send an APRS location beacon.

**Requirements:**
- Works only in regular radio mode (not GPS module mode)
- Uses DTMF Start Delay for timing

### Manual Beacon in Radio Mode (BETA 06+)
You can now send manual beacons directly from regular radio mode without entering GPS mode.

**Method 1:** Press **SP-1** during TX to send a beacon
**Method 2:** Traditional PTT + S1 method (as above)

**Note:** No need to switch to GPS mode anymore for manual beacon transmission.

## Virtual TTNC (KISS Mode) (BETA 04F+)

Transceiver and Terminal Node Controller (TTNC) mode has been implemented. The virtual TNC operates like a physical TNC in KISS mode.

Serial KISS data is transmitted over the regular programming cable at **38400 baud**.

### Configuration
**Path:** Main Menu → APRS

#### KISS Mode
Activate virtual TTNC

#### Persist: 1 - 255
Probability X in 255 that a queued packet will be sent on a clear frequency.

#### Slot Time: 0-200 milliseconds
Delay time if Persist probability check fails.

## Troubleshooting

### Side Buttons Stop Working (BETA 05C)
**Cause:** Squelch is open while APRS decoding is active.

**Fix:**
- Requires Main Menu → APRS → Use VFO to be set to A, B or C
- Do not use squelch override on the VFO that's set for APRS

**Additional Protection (BETA 05D):**
- Switching VFOs now cancels squelch override status
- Squelch override cannot be activated on APRS-assigned VFO if Hear Tones is off

### Squelch Override Indicator (BETA 05D+)
When squelch override is active, the signal bar displays **'OV'** instead of 'RX'.

## Hardware Compatibility

APRS sending works on all models - GPS capability is not required for transmitting APRS beacons.

For GPS-based beacons, see the [GPS Guide](gps.md).

## Version History

- **BETA 04E:** Initial APRS implementation (sending only, basic decoding)
- **BETA 04F:** MIC-E Beacon System, Beacon List, Virtual TTNC (KISS Mode)
- **BETA 05D:** APRS/GPS icons, VFO selection, AX.25 Digipeater, distance/heading display
- **BETA 05F:** RAW GPS, Standard, and Compressed beacon decoding
- **BETA 05G:** Removed "Beacon TX" option (was causing confusion)
