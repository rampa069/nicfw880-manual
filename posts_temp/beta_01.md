# nicFW 880 BETA 01 Release

**Date:** September 15

## IMPORTANT:
I have a Radtel RT-880, a Radtel RT-880G and an iRadio UV-98 Plus, all of which have serial numbers greater than 300 (i.e. current models). These are the ONLY radios I can support.

Radtel assure me that the sub 300 serial number units differ only by the firmware flashing process so these Radtel units "should" work (you have to select UV-98 as the model during flashing), but I have no way to verify this, thus I cannot support them.

Similarly, early models of the iRadio UV-98 have obvious hardware differences that have been demonstrated. Since these early units are no longer manufactured and are now unavailable, I cannot obtain one for testing so I have no way to support them. Sorry.

## New Feature: DTMF Preset System

**Default DTMF Menu Open Key:** SP-S2 (configurable)

### DTMF Preset Menu Controls

- **Up / Down:** Browse to next or previous preset
- **Red:** Exit menu
- **Green / PTT:** Select and begin transmitting DTMF sequence
- **0–9:** Enter DTMF preset number
- **Long Press Green:** Edit DTMF preset name

### Main Menu – DTMF Category

- **Deviation:** Controls the loudness of the DTMF tones
- **Digit Time:** Duration (ms) each digit is transmitted
- **Gap Time:** Silence (ms) between digits
- **Start Pause:** Delay (ms) after transmit is engaged before tones begin
- **Preset:** Edit stored DTMF digit sequences

### Editing Preset DTMF Digits

When editing, key mappings differ:

- **0–9:** Enter digits 0–9
- **Green, Up, Down, Red:** Enter DTMF digits A, B, C, D (respectively)
- **\*, #:** Enter Star (*) and Hash (#)
- **PTT:** Confirm entry
- **S1:** Backspace
- **S2:** Abort entry

### Notes:

- Entering a blank/empty DTMF sequence will delete/deallocate the slot.
- The DTMF Preset menu will only open if:
  - There is at least one valid DTMF Preset saved
  - TX Is permitted
- DTMF Decoding is planned and will be implemented in a future release.

## PTT ID

DTMF Preset #99 is used for the PTT ID sequence.

## Extras

- Added long-press action to copy the currently selected channel to the VFO
- Increased scanning speed
- Numerous tweaks and fixes based on feedback from the ALPHA 19 release

## To Do

GPS, APRS & DTMF Decoding functions will be added in a future release.
