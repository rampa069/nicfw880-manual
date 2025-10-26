# nicFW880 BETA 05E Release

**Note:** Please read the previous release notes if you haven't already, items are not repeated in these posts.

## What's new

### Added Remote tab
**Important:** BOTH firmware 05E and RMS 05E are required for this feature to work.

### Remote tab behavior
- When the Remote Connection is active, no other RMS tabs may be selected.
- On startup the Remote display does not automatically refresh (there are too many possible states). To force a screen refresh, open and then close the menu (or otherwise trigger a redraw).

### WARNING
RF energy in close proximity to the USB programming cable can fry the UART chip in the cable and cause it to crash, severing the link between the PC and the radio. Don't post reports like "it stops working when I press PTT"; they will not be well received.

## Key mappings

- 0–9 → 0–9
- . / * → *
- Tab / # → #
- Enter → Green
- Escape / Backspace → Red
- Up / PageUp → UP
- Down / PageDown → DOWN
- Mouse Wheel → UP & DOWN
- F1 → S1
- F2 → S2
- F3 → EMG
- Space → PTT

(Yes, 0–9 are still 0–9. 🤣)

## Still to do
- Add more APRS decode formats
- GDO 433 cloning
