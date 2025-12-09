# nicFW880 V5.08.02B [Release]

**Creator:** nicsure
**Date:** November 7

---

The RMS distributions DO NOT CONTAIN VIRUSES. If your browser or computer tells you they do then it's a false positive. I don't distribute malware and I don't appreciate direct or indirect accusations (I'm talking to you Patreon) that I do.

## What's New?

This release was mainly to level things out of beta, but there are a few upgrades to functionality.

### Maidenhead locator system

### Scrambler frequency upper limit increased to 4500 Hz

### RMS 'Settings' Tab
In preparation for the first mainstream release. (This was a lot of work)

### RMS 'Calibration' Tab

---

## 5.08.01A Update

- Added 'Main Menu -> GPS -> Off While TX'
  - Turns GPS off when you transmit to help reduce audio interference on TX audio.

- Decreased Long Wave reception limit to 100 kHz

- "Spirit Box" sweep mode in FM tuner.
  - This was a request, but to me it seems completely useless.
  - LP-0 To start a fast sweep of 70-108 MHz.
  - Press any key during fast sweep to stop.

- RMS CHIRP .csv channel export function.

---

## 5.08.01AA RMS Update

- CHIRP exporting

- 'N/T' channels fixed.

- 'WFM' and 'WAM' now export correctly as just 'FM' and 'AM'

- Added user dialog when channels have only single side privacy codes set, to choose using cross mode or to set TX and RX privacy codes to the same.

- Settings Tab, 'APRS Popup Time' decimal place issue fixed.

---

## 5.08.01B Update

- Improving the "Scan TX Too?" setting.
  - Before, this could end up with channels being saved back after scanning in a reversed state. Hopefully this won't happen now.

- Added "Menu -> Display -> Heartbeat Style"
  - Choose between flashing the Green/Red LED or the Keypad.

- Added "Insert" and "Delete" to channel list right click menu.

---

## 5.08.01C Update

- RT-880 - Improved VFO ultra scan speed.
  - This is pretty much as fast as I can get it, the 880's RX stage is just not as fast to settle down as other radios, so the BK4819 needs more time to get enough of a signal.

- RT-880 - Channel scanning now entirely skips any channel that would need to toggle the band relay.

- RT-880 - Maidenhead locator bug regarding negative longitude/latitude fixed.

- RT-880 - Bug with GPS navigation and negative longitude locations fixed.
  - Many thanks to Wayne WA2N for his help getting to the bottom of this.

- RT-880 - Added "Menu -> Scan -> Save Ignores"
  - Allows excluded frequencies to persist.

---

## 5.08.02 Update

- RT-880 - Scan Exclusions now editable from the RMS

- RT-880 - Imperial distance units changed to Feet/Miles

---

## 5.08.02A Update

- Fixed issue with scan exclusions not being added to the list correctly.

- Renamed 'Menu -> Scanning -> Ultra Scan' to 'UScan Level'

- Added 'Menu -> Scanning -> UScan Time'
  - Defines the amount of time in microseconds that Ultra Scan waits after changing frequency before checking the signal level. Do not change this from 1500 unless you are willing to experiment a LOT. Setting this value too low will cause Ultra Scan not to detect anything.

- Added 'Menu -> Scanning -> Scan Return' by request.
  - Defines what happens when a scan is stopped:
    - Last Signal - Sets the VFO to the last frequency/channel where a signal was found.
    - Start - Sets the VFO to the scan's starting frequency or channel.
    - Last Scanned - Leaves the VFO set to whatever frequency/channel was last (just) scanned.

---

## 5.08.02B Update

- Full display refresh after stopping a scan.

- Added "Menu -> Scanning -> Smart Scan"
  - Increases the number of hits during a VFO scan by prioritizing frequencies that have previously seen activity. There is a trade-off however, as this will slow down the speed of the underlying sequential scan.
