# nicFW880 BETA 04F

**IMPORTANT:** Perform a settings reset before use.
- Hold EMG while powering on.
- After power on wait for red triangle to vanish.

**Use BETA 04 RMS**

**Note:** This was a LOT of work and a LOT of new code. It's almost certainly going to have some issues, so don't expect 100% right away.

## MIC-E Beacon System

Configure via -> APRS Menu

### SSID: 0-7
Sets secondary station ID.

### Decode: On/Off/Popup
Enables decoding of received APRS MIC-E packets.
Set to Popup if you wish to have beacons show as they're received.

### Popup Time: 0.1-9.9 seconds
Time APRS popup stays on screen

### Symbol: ASCII Code
MIC-E Blip Symbol for transmitted packets

### Status: 0-7
MIC-E ABC Message field (status)

### Digipeater Path: Off, WIDE1-1, WIDE2-2

### Ambiguity: 20 m, 200 m, 2 km
Transmitted beacon location accuracy.

**Note:** 20m is the best accuracy for MIC-E, which has a resolution of 1/100th of a minute, which is about 18m. I round this up for readability.

## Beacon List

In the GPS module, SP 6 will open the "Heard Beacons" list menu (assuming at least one has been heard).

**Note:** Heard beacons are not retained in storage.

### Controls:
- **UP/DOWN** - Browse heard beacons
- **RED** - Exit beacon list menu
- **GREEN** - Set beacon as current target

**To save a beacon to your waypoints:** Use the above menu to set it as the current target. Then use Main Menu -> GPS -> Save

## Virtual TTNC (KISS Mode)

Transceiver and Terminal Node Controller (TTNC) mode has been implemented. The virtual TNC operates like a physical TNC in KISS mode. Serial KISS data is transmitted over the regular programming cable at 38400 baud.

Configure via -> APRS Menu

### KISS Mode
Activate virtual TTNC

### Persist: 1 - 255
Probability X in 255 that a queued packet will be sent on a clear frequency.

### Slot Time: 0-200 milliseconds
Delay time if Persist probability check fails.

## Audio Boost

Some radios have kinda weak AF output. So a new menu: **Advanced -> Audio Boost** has been added by request. Incrementally boosts the audio gain from the radio chip to compensate for radios with low amplified audio output.
