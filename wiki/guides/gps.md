# GPS & Navigation Guide

## Overview

GPS functionality was introduced in BETA 02 and significantly expanded in BETA 03 with waypoints and tracking features.

**First introduced:** BETA 02
**Major update:** BETA 03 (Waypoints & Tracking)
**Latest updates:** v5.09.01 (coordinate format, QRM reduction)

## Activation

**Default key:** LP-GREEN (configurable via user keys or radio mode function menu)

GPS starts in **Data Mode**, showing raw GPS data as it's received.

## Display Modes

### Data Mode
Shows raw GPS data:
- Latitude / Longitude / Altitude
- Satellite count
- Speed & heading
- Time

### Tracker/Compass Mode
- Compass display
- Waypoint navigation
- Distance and heading to target
- GPS icons showing lock status

## Key Controls

### Short Press (SP) Functions

- **SP-GREEN:** Open main menu
- **SP-#:** Toggle Data Mode ↔ Tracker Mode
- **SP-\*:** Switch compass rotation mode
- **SP-6:** Open "Heard Beacons" list (APRS beacons, BETA 04F+)
- **SP-7:** Open waypoint selection (requires at least one saved waypoint)
- **SP-9:** Toggle units (Imperial, Nautical, Metric)
- **SP-RED:** Exit GPS module

### Long Press (LP) Functions

- **LP-GREEN:** GPS function menu
- **LP-1:** Set tracking radius (BETA 03+)
  - Edit Latitude degrees (in Waypoint menu, BETA 04A+)
- **LP-2:** Edit Longitude degrees (in Waypoint menu, BETA 04A+)
- **LP-4:** Set target to current location (BETA 03+)
  - Change Latitude sign in Waypoint menu (BETA 04A+)
- **LP-5:** Clear target (BETA 03+)
  - Change Longitude sign in Waypoint menu (BETA 04A+)

### BETA 02A Controls
When GPS is active (early versions):
- **RED:** Exit GPS module
- **#:** Toggle raw data ↔ compass mode view
- **\*:** Switch between cardinal rotation ↔ pointer rotation
- **9:** Cycle through knots ↔ mph ↔ kph

## GPS Configuration

### Main Menu → GPS

#### Enabled
**Path:** Main Menu → GPS → Enabled

**Previously:** Main Menu → Time → GPS Sync (moved in BETA 04E)

**This must be ON for any GPS functions to work.**

If turned off, the radio will use fixed GPS locations (Default GPS Waypoint).

#### Reduce QRM (v5.09.01+)
**Path:** Main Menu → GPS → Reduce QRM

**Previously:** 'Off While TX' (renamed in v5.09.01)

Allows reduction of QRM (interference) from the GPS chip. Options:
- **Off** - No QRM reduction
- **TX** - Reduce QRM during transmit only
- **RX** - Reduce QRM during receive only
- **Both** - Reduce QRM during both TX and RX

#### Coordinate Display Format (v5.09.01+)
**Key:** LP-0 in GPS module (added to GPS Functions)

Switches coordinate display format between:
- **Decimal Degrees** - e.g., 51.5074° N, 0.1278° W
- **Degrees/Minutes** - e.g., 51° 30.44' N, 0° 7.67' W

#### Default GPS Waypoint (BETA 04E+)

**Waypoint 99** is the default location.

- If GPS is turned off or the radio is non-GPS, this waypoint loads at startup as the current location
- You can set any waypoint as the current location by long-pressing **RED** while browsing waypoints

## Waypoint Management

### Saving a Waypoint

**Method 1: From GPS Module**
1. Navigate to desired location or use LP-4 to set target to current location
2. Press SP-GREEN to open main menu
3. Navigate to GPS category → Point Save
4. Choose an unused slot (1-99, except 99 which is default)
5. Press SP-GREEN to save

**Method 2: From RMS**
- Use RMS → GPS tab
- RMS uses signed decimal degrees (up to 5 decimal places) for latitude/longitude

### Renaming Waypoints

**On Radio:**
1. Open waypoint selection (SP-7)
2. Navigate to the desired waypoint
3. Press LP-GREEN
4. Use T9 keypad entry to enter name

**In RMS:**
- Edit directly in the GPS tab

### Editing Waypoint Coordinates (BETA 04A+)

While the Waypoint menu is open and the required Waypoint is shown:
- **LP-1:** Edit Latitude degrees
- **LP-2:** Edit Longitude degrees
- **LP-4:** Change Latitude sign (toggle positive/negative)
- **LP-5:** Change Longitude sign (toggle positive/negative)

### Saving APRS Beacons as Waypoints (BETA 04F+)

1. In GPS module, press SP-6 to open "Heard Beacons" list
2. Use UP/DOWN to browse beacons
3. Press GREEN to set beacon as current target
4. Open main menu (SP-GREEN) → GPS → Save
5. Choose slot and save

⚠️ **Note:** Heard beacons are not retained in storage until saved as waypoints.

## GPS Icons (BETA 05D+)

### GPS Status Icon
- **Dish pointing down:** GPS functionality enabled, but no GPS lock acquired
- **Dish pointing up:** GPS enabled and locked

## Display Units

Press **SP-9** to cycle through:
- **Imperial** (miles, mph)
- **Nautical** (nautical miles, knots)
- **Metric** (kilometers, km/h)

Units setting is saved to storage (BETA 04+).

## Compass Modes

Press **SP-\*** to switch between:
- **Cardinal rotation:** Compass rotates, pointer stays fixed
- **Pointer rotation:** Compass stays fixed, pointer rotates

Rotation mode is saved to storage (BETA 04+).

## Real-Time Clock (BETA 02A+)

GPS provides time synchronization.

Check **Main Menu → Time** category for clock settings.

### Time Display Options
- 24-hour or 12-hour format (BETA 03+)
- Enable/disable clock display (BETA 04+)

**Note:** In 12-hour mode, AM/PM replaces the day of the week to save space.

## GPS Features

### Tracking Radius (BETA 03+)
Set via LP-1 in GPS module. Defines the radius around a target waypoint.

### GPS Distance Calculation (BETA 05G)
GPS distance calculation now corrects for latitude (longitude lines "squash" together as you get closer to the poles).

### Altitude Correction
- GEOID correction implemented (BETA 3B)
- Finer GEOID correction system (BETA 3C)

## Rudimentary RX/TX in GPS Module (BETA 04+)

You can now use basic RX/TX while GPS module is active.

**Limitations:**
- Uses whatever VFO was active when GPS module started
- This is RUDIMENTARY RX/TX only
- No extra features such as Multiwatch running

## DTMF Location Broadcast (BETA 04A+)

Transmit your GPS location via DTMF to another radio.

1. In GPS module, press PTT (if PTT is allowed)
2. Press **S2** to transmit location

**Receiving radio requirements:**
- Must be in GPS module
- Must have no waypoint selected

## Hardware Requirements

GPS functions require GPS-capable models:
- Radtel RT-880G (with GPS)

Non-GPS models can still:
- Use APRS (see [APRS Guide](aprs.md))
- Use fixed waypoints (Waypoint 99 default)

## Troubleshooting

### GPS Not Working
- Ensure Main Menu → GPS → Enabled is set to ON
- Check GPS icon status (dish up = locked, dish down = no lock)
- May require clear view of sky for satellite acquisition

### Smearing Issues (Fixed in BETA 3A)
Fixed smearing issue on fixed compass rotation mode.

## Version History

- **BETA 02:** Initial GPS implementation (diagnostic tool)
- **BETA 02A:** GPS Compass mode, Real-Time Clock, unit selection
- **BETA 03:** Major update - Waypoints, Tracking, full navigation
- **BETA 04:** GPS/VFO integration, RX/TX in GPS mode, range saving
- **BETA 04A:** DTMF location broadcast, waypoint coordinate editing
- **BETA 04E:** GPS Sync moved to GPS menu, Default Waypoint system
- **BETA 04F:** Integration with APRS Beacon List
- **BETA 05D:** GPS icon status indicators
- **BETA 05G:** Improved distance calculation with latitude correction
- **v5.09.01:** Coordinate display format toggle (Dec/DegMin), 'Reduce QRM' setting (replaces 'Off While TX')
