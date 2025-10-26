# DTMF Functions Guide

## Overview

DTMF (Dual-Tone Multi-Frequency) functionality includes:
- Manual DTMF transmission (ALPHA 13)
- DTMF Preset system (BETA 01)
- DTMF Decoding (BETA 02)
- DTMF Speed Dial (BETA 02)
- DTMF Enter (single-use sequences, BETA 04)

## Manual DTMF (ALPHA 13+)

Manually send DTMF tones and set a custom repeater tone frequency.

**Repeater tone configuration:** Advanced menu category

## DTMF Preset System (BETA 01+)

Store and transmit DTMF sequences for repeater access, autopatch, etc.

### Opening DTMF Preset Menu

**Default key:** SP-S2 (configurable)

**Requirements:**
- At least one valid DTMF Preset must be saved
- TX must be permitted

### DTMF Preset Menu Controls

- **Up / Down:** Browse to next or previous preset
- **Red:** Exit menu
- **Green / PTT:** Select and begin transmitting DTMF sequence
- **0–9:** Enter DTMF preset number (jump to preset)
- **Long Press Green:** Edit DTMF preset name

## Configuration

### Main Menu → DTMF

#### Deviation
Controls the loudness of the DTMF tones.

#### Digit Time (ms)
Duration each digit is transmitted.

#### Gap Time (ms)
Silence between digits.

#### Start Pause (ms)
Delay after transmit is engaged before tones begin.

Also used for APRS Beacon TX timing (BETA 04E+).

#### Preset
Edit stored DTMF digit sequences (up to 99 presets).

## Editing DTMF Preset Digits

Access via: Main Menu → DTMF → Preset

### Key Mappings (While Editing)

- **0–9:** Enter digits 0–9
- **Green:** Enter DTMF digit A
- **Up:** Enter DTMF digit B
- **Down:** Enter DTMF digit C
- **Red:** Enter DTMF digit D
- **\*:** Enter Star (*)
- **#:** Enter Hash (#)
- **PTT:** Confirm entry
- **S1:** Backspace
- **S2:** Abort entry

### Notes

- Entering a blank/empty DTMF sequence will delete/deallocate the slot
- Maximum 99 presets (slots 1-99)
- Preset #99 is reserved for PTT ID

## PTT ID (BETA 01+)

**DTMF Preset #99** is used for the PTT ID sequence.

When configured, this sequence is automatically transmitted based on your PTT ID settings.

## DTMF Speed Dial (BETA 02+)

Quick-access transmission of DTMF presets via long-press.

### Setup

1. Assign "DTMF Speed Dial" function to a user key
2. Long-pressing that key transmits the corresponding preset

**Example:**
- If LP-2 is set to DTMF Speed Dial
- Holding 2 will transmit preset #2

## DTMF Enter (BETA 04+)

Transmits a single-use DTMF sequence.

**User Key function:** "DTMF Enter"

Useful for one-time codes or sequences that don't need to be stored.

## DTMF Decoding (BETA 02+)

Decode and display received DTMF sequences.

### Configuration

**Path:** Main Menu → DTMF

#### Decoding Options

- **Off:** No decoding
- **On:** Enable decoding only (display digits)
- **P-ID:** Match heard sequences against presets and display their names

#### Display For (seconds)
How long detected digits are shown on screen.

Decoded DTMF digits temporarily replace the Group Name on screen.

#### SeqEnd Pause (seconds)
Pause after a detected digit, marking the end of a sequence.

Helps distinguish between separate DTMF transmissions.

## Using DTMF with Other Features

### APRS Location Broadcast (BETA 04A+)

DTMF can transmit GPS location to another radio.

See [GPS Guide](gps.md) → DTMF Location Broadcast section.

### APRS Beacon Timing (BETA 04E+)

DTMF Start Delay setting is used to control APRS Beacon TX timing.

See [APRS Guide](aprs.md) for details.

## Tips & Best Practices

### Preset Organization

- Use presets 1-9 for frequently accessed repeaters
- Use higher numbers for less common sequences
- Name presets clearly (use T9 entry for descriptive names)
- Reserve preset #99 for PTT ID

### Timing Adjustments

If repeaters aren't responding:
- Increase **Digit Time** (longer tone duration)
- Increase **Start Pause** (more delay before tones)
- Adjust **Gap Time** (spacing between digits)

### Decoding Settings

For reliable decoding:
- Set **SeqEnd Pause** to 1-2 seconds
- **Display For** should be long enough to read the sequence
- Use **P-ID mode** if you have common sequences stored as presets

## Troubleshooting

### DTMF Preset Menu Won't Open
**Check:**
- At least one preset is saved
- TX is permitted (not in RX-only mode)
- Correct key assigned (default SP-S2)

### Repeater Not Responding to DTMF
**Try:**
- Increase Deviation (louder tones)
- Increase Start Pause (give repeater time to open)
- Verify correct DTMF sequence
- Check if repeater requires specific tone duration

### DTMF Decoding Not Working
**Check:**
- Decoding is set to "On" or "P-ID" (not "Off")
- Audio is clear (strong signal)
- SeqEnd Pause is appropriate for the transmission pattern

## Version History

- **ALPHA 13:** Manual DTMF transmission, Repeater tone
- **BETA 01:** DTMF Preset system, PTT ID
- **BETA 02:** DTMF Decoding, DTMF Speed Dial
- **BETA 04:** DTMF Enter (single-use sequences)
- **BETA 04E:** DTMF Start Delay used for APRS timing
