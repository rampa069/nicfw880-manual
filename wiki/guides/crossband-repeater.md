# Crossband Repeater Guide

## Overview

Crossband Repeater mode allows your radio to relay signals between VHF and UHF bands, effectively functioning as a portable repeater.

**Introduced:** ALPHA 13
**Activation:** Long-press EMG

## What is Crossband Repeater?

In Crossband Repeater (XB Repeater) mode, the radio simultaneously monitors two frequencies on different bands (one VHF, one UHF) and retransmits received signals on the opposite band.

### Use Cases

- Extend range between handheld radios
- Bridge VHF and UHF communications
- Mobile-to-handheld relay
- Emergency communications backup

## Setup Requirements

Before activating Crossband Repeater, ensure all requirements are met:

### 1. VFO Configuration
- **VFO-A and VFO-B must be in simplex mode**
  - No TX/RX offset
  - Not configured for repeater operation

### 2. Transmit Permission
- **Both VFOs must be allowed to transmit**
  - Check TX permission settings for each VFO

### 3. Band Configuration
- **One VFO on VHF, the other on UHF**
  - Example: VFO-A = 146.520 MHz (VHF), VFO-B = 446.000 MHz (UHF)
  - Will not work with both VFOs on the same band

### 4. Squelch Settings
- **Squelch must be closed**
  - Set appropriate squelch level to avoid false triggering
  - Too loose = constant triggering
  - Too tight = weak signals won't trigger

## Activation

**Key:** Long-press **EMG**

The radio enters Crossband Repeater mode and begins monitoring both VFOs.

## Operation

### How It Works

1. Radio simultaneously monitors VFO-A and VFO-B
2. When signal is received on VFO-A:
   - Radio retransmits on VFO-B
3. When signal is received on VFO-B:
   - Radio retransmits on VFO-A
4. Process continues until you exit XB Repeater mode

### Controls While Running

- **Press RED:** Exit XB Repeater mode (return to normal operation)
- **Press STAR (\*):** Toggle the screen on/off (save power)

## Example Configuration

### VHF to UHF Relay

**VFO-A (VHF):** 146.520 MHz (simplex)
**VFO-B (UHF):** 446.000 MHz (simplex)

- Handheld #1 transmits on 146.520 MHz (VHF)
- Radio receives on VFO-A and retransmits on 446.000 MHz (UHF)
- Handheld #2 receives on 446.000 MHz (UHF)

And vice versa for the opposite direction.

### Mobile to Handheld

**Scenario:** Extend range from mobile to handheld

**VFO-A (VHF):** 146.520 MHz - for mobile radio
**VFO-B (UHF):** 446.000 MHz - for handheld

- Place XB repeater radio in high location
- Mobile communicates on VHF
- Handheld communicates on UHF
- XB radio bridges the two

## Power Considerations

### Battery Life

Crossband repeater operation consumes significant power because:
- Continuous monitoring of two frequencies
- Frequent transmissions
- No power-saving sleep mode

**Recommendations:**
- Use with external power when possible
- Monitor battery level
- Toggle screen off with STAR to save some power

### Heat Management

Extended crossband operation can generate heat:
- Ensure adequate ventilation
- Avoid extended continuous transmissions
- Monitor radio temperature

## Tips & Best Practices

### 1. Antenna Considerations

**Best setup:**
- Dual-band antenna OR
- Separate VHF and UHF antennas

**Why:** Better isolation between bands reduces interference.

### 2. Frequency Selection

- Use simplex frequencies appropriate for your license
- Avoid interfering with existing repeaters or nets
- Choose clear frequencies to minimize false triggers

### 3. Squelch Setting

- Set squelch tight enough to avoid noise triggering
- But loose enough to catch weak signals
- Test before deploying

### 4. Location

For maximum effectiveness:
- Place XB repeater radio in high, central location
- Good line of sight to both endpoints
- Away from RF noise sources

### 5. Privacy/Signaling

Consider using:
- CTCSS/DCS tones on both VFOs
- Prevents triggering from unintended signals
- Provides some privacy

## Troubleshooting

### XB Repeater Won't Start

**Check all requirements:**
1. ✓ VFO-A and VFO-B in simplex mode?
2. ✓ Both VFOs allowed to transmit?
3. ✓ One VFO on VHF, other on UHF?
4. ✓ Squelch closed (not open)?

**If one requirement fails, XB mode won't activate.**

### Constant Triggering/Looping

**Possible causes:**
- Squelch too loose (picking up noise)
- Feedback between antennas (too close)
- Strong nearby signal

**Solutions:**
- Tighten squelch
- Improve antenna isolation
- Check for interference sources

### Weak or No Retransmission

**Check:**
- TX power settings on both VFOs
- Antenna connections
- Battery level (low battery = low power)

### One Direction Works, Other Doesn't

**Check:**
- TX permission on both VFOs
- Squelch setting on the non-working VFO
- Antenna performance on both bands

## Legal and Safety Considerations

### Licensing

Ensure you have appropriate license for:
- Frequencies used
- Power levels
- Mode of operation

Crossband repeater operation may have specific regulations in your jurisdiction.

### Interference

- Don't interfere with existing communications
- Monitor before activating
- Be prepared to shut down if causing interference

### Identification

Depending on regulations, you may need to:
- Periodically identify the relay station
- Use station ID on both frequencies

## Limitations

### Not a Full Repeater

Crossband repeater is simpler than a full repeater:
- No duplexer (uses two different bands instead)
- No courtesy tones (typically)
- No timeout timer (use responsibly)
- Manual activation/deactivation

### Simultaneous Signals

Cannot relay two simultaneous transmissions:
- If both bands receive signal at once, behavior undefined
- Users should follow normal simplex procedures (one at a time)

## Comparison with Other Features

### Crossband Repeater vs. Multiwatch

**Multiwatch:**
- Monitors and receives only
- Switches between VFOs
- No retransmission

**Crossband Repeater:**
- Monitors and retransmits
- Actively relays between bands
- Full duplex-like operation

See [Multiwatch Guide](multiwatch.md) for details on monitoring.

## Version History

- **ALPHA 13:** Crossband Repeater introduced

## Screen Power Saving

**Toggle screen:** Press STAR (\*)

Turning off the screen during operation:
- Saves battery power
- Reduces heat
- Operation continues normally

Press STAR again to turn screen back on.
