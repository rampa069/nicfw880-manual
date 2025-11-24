What's New?
This release was mainly to level things out of beta, but there are a few upgrades to functionality.

Maidenhead locator system

Scrambler frequency upper limit increased to 4500 Hz

RMS 'Settings' Tab
In preparation for the first mainstream release. (This was a lot of work)

RMS 'Calibration' Tab

5.08.01A Update?
Added 'Main Menu -> GPS -> Off While TX'
Turns GPS off when you transmit to help reduce audio interference on TX audio.

Decreased Long Wave reception limit to 100 kHz

"Sprit Box" sweep mode in FM tuner.
This was a request, but to me it seems completely useless.
LP-0 To start a fast sweep of 70-108 MHz.
Press any key during fast sweep to stop.

RMS CHIRP .csv channel export function.

5.08.01AA RMS Update?
CHIRP exporting

'N/T' channels fixed.

'WFM' and 'WAM' now export correctly as just 'FM' and 'AM'

Added user dialog when channels have only single side privacy codes set, to choose using cross mode or to set TX and RX privacy codes to the same.

Settings Tab, 'APRS Popup Time' decimal place issue fixed.

5.08.01B Update?
Improving the "Scan TX Too?" setting.
Before, this could end up with channels being saved back after scanning in a reversed state. Hopefully this won't happen now.

Added "Menu -> Display -> Heartbeat Style"
Choose between flashing the Green/Red LED or the Keypad.

Added "Insert" and "Delete" to channel list right click menu.

5.08.01C Update?
RT-880 - Improved VFO ultra scan speed.
This is pretty much as fast as I can get it, the 880's RX stage is just not as fast to settle down as other radios, so the BK4819 needs more time to get enough of a signal.

RT-880 - Channel scanning now entirely skips any channel that would need to toggle the band relay.

RT-880 - Maidenhead locator bug regarding negative longitude/latitude fixed.

RT-880 - Bug with GPS navigation and negative longitude locations fixed.
Many thanks to Wayne WA2N for his help getting to the bottom of this.

RT-880 - Added "Menu -> Scan -> Save Ignores"
Allows excluded frequencies to persist.
