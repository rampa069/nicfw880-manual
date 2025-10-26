# Advanced Menu Overview

Complete reference for settings in the Advanced menu category.

**Path:** Main Menu → Advanced

---

## SPI Deferral

Defines the delay, in seconds, that the radio waits after a user action before saving changes to flash memory.

**Purpose:** Delaying writes helps extend the life of the flash storage.

### Warning Indicator

While changes are pending, a **red warning triangle** appears on the display.

### ⚠️ Important

**Do not power off the radio while the warning triangle is visible.**

Either:
- Wait for the deferral period to expire, OR
- Use the **Shut Down menu option** to safely save changes

---

## Tone Monitor Time

Specifies the duration, in seconds, that the CTCSS/DCS tone indicator remains visible on the display after the received signal is lost.

**Units:** Seconds

**Effect:** Controls how long you can see what tone was received after transmission ends.

---

## AM AGC Fix

Activates an additional level of automatic gain control (AGC) for strong AM signals.

**Purpose:** Helps prevent receiver overload and saturation on strong AM signals.

### Note

The effect is **not immediate**.

Very strong AM signals may produce a brief buzz or crackle before the AGC adjustment takes full effect.

---

## Noise Gate

When enabled, the Noise Gate mutes the speaker if external noise exceeds the Noise Ceiling setting in the Squelch menu.

**Works even when:**
- Squelch is forced open (via squelch override)
- Squelch setting is 0

### Purpose

Designed for use with very weak signals to reduce background noise.

### Related Settings

See [Squelch Settings](squelch-settings.md) → Noise Ceiling

---

## AF Filters

Selects the audio filter combination for the receiver.

### Available Filters

Three filters are available:
1. **High Pass**
2. **Low Pass**
3. **De-emphasis**

Any combination of these filters can be applied.

### FSK Mode

An additional setting designed for digital operation, such as APRS.

**When to use:** APRS, packet, other digital modes

---

## DTMF Deviation

Adjusts the volume of transmitted DTMF tones.

### Important Note

The **TX Deviation** setting also affects DTMF volume.

**Both settings should be adjusted together for optimal results.**

### Related Settings

- TX Deviation (see below)
- Main Menu → DTMF → Deviation

See [DTMF Guide](../guides/dtmf.md) for more information.

---

## Repeater Tone

Sets the frequency (in Hz) of the single-burst repeater tone that is transmitted when the key assigned to send the repeater tone is pressed.

**Default frequency:** 1750 Hz

**Common uses:**
- European repeater access
- Simplex call tone

---

## TX Deviation

Adjusts the amount of FM deviation during transmission, effectively controlling the bandwidth of your signal.

**Default value:** 64

### Important

Values above **74** may cause distortion that is noticeable to listeners.

### Affects

- Voice transmission bandwidth
- DTMF tone volume (combined with DTMF Deviation)
- Subtone volume (combined with Subtone Deviation)

---

## Subtone Deviation

Adjusts the level of CTCSS/DCS subtone transmission.

### Important

Setting the level too high may make the tones audible during normal transmission.

The **TX Deviation** setting also affects subtone volume.

**For optimal results:** Adjust both TX Deviation and Subtone Deviation together.

---

## AM Hack Transform

**(ALPHA 19+)**

Fine tunes the AM TX "Hack" transform parameter.

### Note

AM TX is **not even close to perfect**. It's experimental and results will likely vary dramatically from user to user.

These settings are designed to be experimented with so good default values can be discovered.

**Transform:** Adjusts the amount of offset applied to a simulated AM transmission.

---

## AM Hack Displacement

**(ALPHA 19+)**

Fine tunes the AM TX "Hack" displacement parameter.

**Displacement:** Adjusts the apparent volume or gain of the simulated modulation.

### Experimental Feature

AM TX is experimental. Results vary by:
- Radio unit
- Frequency
- Power level
- Antenna

Users encouraged to experiment and share working values.

---

## Audio Boost

**(BETA 04F+)**

Incrementally boosts the audio gain from the radio chip to compensate for radios with low amplified audio output.

**Path:** Advanced → Audio Boost

**When to use:**
- Radio speaker volume is too quiet even at maximum
- AF output to external speaker/headphones is weak

**How it works:** Increases gain stages in the receiver audio path.

---

## PIN

**(BETA 03+)**

Secure your device with a PIN.

When enabled, once the keypad is locked it cannot be unlocked until the correct PIN is entered.

### PIN Action

**(BETA 3A+)**

**Path:** Advanced → PIN Action

**Options:**
- **Normal:** PIN required to unlock keypad after lock
- **Startup:** Force PIN entry on power up

Set to 'Startup' to force PIN entry on power up for maximum security.

---

## Wake LCD On

**(BETA 03+)**

Configure what wakes the display.

### Options

- **Keys Only:** Only key presses wake the screen
- **RX:** A received signal or key press wakes the screen
- **TX:** Transmit or key press wakes the screen
- **All:** Any event will wake the display

### Power Saving

Use "Keys Only" for maximum battery conservation.

Use "All" for maximum responsiveness.

---

## Tips & Best Practices

### SPI Deferral
- Set to reasonable value (5-10 seconds typical)
- Allows quick adjustments without constant flash writes
- Always use Shut Down menu option (don't just pull battery)

### Deviation Settings
- Start with defaults (TX Deviation = 64)
- Make small adjustments
- Test with another radio
- Too high = distortion, too wide signal
- Too low = weak audio, hard to understand

### Noise Gate
- Use with weak signals in noisy environments
- Combine with appropriate Noise Ceiling setting
- May cut out weak signal if set too aggressively

### AM AGC Fix
- Enable if AM reception overloads on strong signals
- Normal for brief crackle before AGC engages
- Not needed for typical FM operation

---

## Related Documentation

- [Squelch Settings Reference](squelch-settings.md)
- [DTMF Guide](../guides/dtmf.md)
- [Calibration Guide](../guides/calibration.md)
- [Si4732 Tuner Guide](../guides/si4732-tuner.md)
