# nicFW880 V5.09.01 [Release]

**Creator:** nicsure
**Posted:** December 9, 2024

---

RMS downloads DO NOT CONTAIN VIRUSES. If your computer or browser tells you they do then it's a false positive. I don't make malware and I don't appreciate direct or indirect accusations (Are you listening Patreon?) that I do.

This is a new major version and a new version of the RMS. Although it is now no longer forced, a settings reset is recommended. Without a reset, newly introduced settings and features will not have been initialized properly, and may take on random values that cause malfunctions.

## What's New?

- **When Multi-PTT is active and VFO-B/VFO-C is assigned to APRS.** The PTT button for that VFO will return to regular assigned function operation.

- **Added 'Dec / DegMin' to GPS Functions (LP-0)**
  Switches coordinate display format between decimal degrees and degrees/minutes

- **'Menu -> GPS -> Off While TX' changed to 'Reduce QRM'**
  Now allows reduction of QRM from the GPS chip during TX, RX or both.

- **Attempted fix for spurious activation of key S1 (typically assigned to Squelch Override)**
  Addressing user reports of spontaneous squelch override. It is 'Attempted' because the issue does not occur on my radios so I have no way to test effectiveness.

- **Per band frequency calibration offset added.**
  You may now calibrate every 50 MHz band step individually with a frequency offset. This will be adjustable in the RMS ONLY.
  I repeat this is RMS ONLY, I will not be making this editable from the radio, so do not ask.
  Ideally, the single 'XTAL 671' setting should be all you need to correctly calibrate a radio, so if you need to use this per band feature, you ain't calibrating properly.
  Note: The 'XTAL 671' adjustment is applied AFTER per band adjustment.

- **APRS Beacon history capacity increased to 50**

- **APRS Beacon history now works like a queue instead of a rolling list.**
  Basically this means the latest beacon received will always be placed at position #1 and everything else shifts up.

- **APRS Beacon history is now saved to flash storage.**
  This means the received beacons will persist after power down.

- **RMS: You may now enter a number after '%' to set the start of batch numerical channel names.**
  Example: Entering 'PMR %15' would start the number from 15 instead of 1.

## RMS Downloads

- Windows & Linux Downloads
- OSX Downloads
