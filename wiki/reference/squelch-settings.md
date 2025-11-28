# Squelch Settings Overview

Complete reference for squelch settings and how they interact.

**Path:** Main Menu → Squelch (or similar, depending on version)

---

## Noise Ceiling

Sets the threshold at which external noise (ex-noise) is considered maximal.

### Effect

- When noise level reaches this point or above, **squelch closes immediately**
- No delay or exception
- Ensures complete silence when excessive external noise is present

### Behavior

Any noise at or above this level triggers instant squelch closure.

This setting **overrides** Squelch Tail - if Noise Ceiling is exceeded, squelch closes immediately regardless of tail setting.

---

## Noise Trigger

Determines the threshold below which external noise (ex-noise) must fall in order for the squelch to open.

### Effect

Squelch will only open when the external noise drops below this level.

Works in conjunction with the **Noise Hysteresis** setting to prevent rapid squelch toggling.

### Related Setting

Refer to **Noise Hysteresis** for additional context on smoothing squelch operation.

---

## Squelch Level

Sets the S-Unit value required for the squelch to open.

### How It Works

The S-Unit value corresponds to **Squelch Level − 1**.

### Examples

| Setting | S-Unit Required | Notes |
|---------|----------------|-------|
| 0 | Off | Squelch permanently open |
| 1 | S0 | Noise Only mode - opens on any detectable signal |
| 4 | S3 | Requires signal to reach at least S3 |
| 9 | S8 | Only very strong signals open squelch |

### Special Cases

- **Setting 0 (Off):** Squelch permanently open (no squelch)
- **Setting 1 (S0):** Effectively enables **Noise Only mode** - opens on any detectable signal

---

## Noise and Signal Hysteresis

**(ALPHA 17+: Range extended to 20)**

Hysteresis sets a buffer to prevent the squelch from rapidly opening and closing due to small fluctuations in noise or signal levels.

**Units:** 1 dBm per 12 (approximately 0.083 dBm per unit)

### Effect

- Applies to both noise-based and signal-based squelch logic
- Introduces a difference between the open and close thresholds
- Reduces "squelch chatter" caused by minor variations in signal or noise levels

### How Hysteresis Works

If the squelch opens at a certain level, it will only close when the signal/noise drops below that level **minus** the hysteresis value.

### Example

```
Squelch opens at: 5 dBm
Hysteresis: 2 units (≈ 0.17 dBm)
Squelch closes at: 5 - 0.17 = 4.83 dBm
```

This prevents rapid opening/closing when signal hovers around threshold.

### Range

**(ALPHA 17+):** Range extended to 20 units

Split into:
- **ExNoise** hysteresis
- **RSSI** (signal) hysteresis

---

## Squelch Throttle

Sets a minimum delay between squelch state changes, preventing rapid toggling.

**Units:** Tenths of a second

### Effect

When the squelch changes state (open → closed or closed → open), the throttle ensures that no further state change can occur for the duration specified.

### Purpose

Helps to avoid rapid squelch cycling in environments with fluctuating signals or noise.

### Example

```
Squelch Throttle: 5 (0.5 seconds)

Squelch opens → Cannot change state for 0.5 seconds
After 0.5s → Can close if conditions met
Squelch closes → Cannot change state for 0.5 seconds
```

---

## Squelch Tail

**(ALPHA 18a+)**

The amount of time in seconds to keep the squelch open after loss of signal.

### Effect

- Keeps the squelch open for the specified duration after the signal is lost
- Prevents the squelch from closing immediately on brief signal drops
- Provides smoother audio during fading or intermittent signals

### Override

This setting is **overridden by the Noise Ceiling**. If the noise level exceeds the Noise Ceiling, the squelch closes instantly regardless of the Squelch Tail setting.

### Example

```
Squelch Tail: 2 (seconds)

Signal is lost → Squelch stays open for 2 seconds
  - If signal returns within 2 seconds → Audio continues uninterrupted
  - If signal doesn't return after 2 seconds → Squelch closes

Exception: If noise exceeds Noise Ceiling → Squelch closes immediately
```

---

## Squelch Tail Elimination (STE)

**(ALPHA 18a+)**

System designed to remove squelch tails at the end of transmissions, improving clarity and reducing noise.

### Requirements

**Requires both parties in a communication to have STE enabled** to function correctly.

### Configuration Options

- **RX:** Receive-side tail elimination only
- **TX:** Transmit-side tail elimination only
- **Both:** Full tail elimination (recommended)

### Typical Usage

Setting to **Both** is recommended for most applications to ensure full tail elimination.

### Note from Developer

"nicFW's squelch cut off response is extremely quick, so this setting is only useful in very noisy environments."

---

## How Squelch Settings Interact

### Priority Order

1. **Noise Ceiling** (highest priority)
   - Instantly closes squelch if exceeded
   - Overrides all other settings

2. **Squelch Throttle**
   - Prevents state changes during throttle period

3. **Noise Trigger + Hysteresis**
   - Noise must be below trigger minus hysteresis to open

4. **Squelch Level + Hysteresis**
   - Signal must exceed level, with hysteresis buffer

5. **Squelch Tail** (lowest priority)
   - Delays closing after conditions met
   - Overridden by Noise Ceiling

### Signal Flow

```
Strong Noise (> Noise Ceiling)?
  └─ YES → Close squelch immediately
  └─ NO → Check Throttle
      └─ In throttle period? → No change
      └─ Not in throttle? → Check Signal & Noise
          └─ Signal > Squelch Level?
          └─ Noise < Noise Trigger?
          └─ Apply Hysteresis
          └─ Check Squelch Tail count
              └─ Open or Close squelch
```

---

## Tips for Squelch Tuning

### Starting Point (Typical Settings)

```
Noise Ceiling: High (e.g., 18-20)
Noise Trigger: Medium (e.g., 8-10)
Squelch Level: 3-5 (S2-S4)
Hysteresis: 2-3
Squelch Throttle: 2-5 (0.2-0.5s)
Squelch Tail: 2-3
```

### For Noisy Environments

```
Noise Ceiling: Lower (catches noise spikes)
Noise Trigger: Higher (noise must be quieter)
Squelch Level: Higher (need stronger signal)
Hysteresis: Higher (more stability)
Use Noise Gate: Enabled
```

### For Weak Signal Work

```
Noise Ceiling: High (don't cut out on noise)
Noise Trigger: Lower (accept more noise)
Squelch Level: Lower (S1-S2)
Hysteresis: Lower (more responsive)
Squelch Tail: Higher (don't drop weak signal)
Noise Gate: Enabled with proper ceiling
```

### For Mobile Operation

```
Hysteresis: Higher (compensate for fading)
Squelch Tail: Higher (ignore brief fades)
Squelch Throttle: Medium (balance stability/response)
```

---

## Troubleshooting

### Squelch Opens on Noise

**Symptoms:** Squelch opens when no signal present

**Solutions:**
- Increase Squelch Level
- Increase Noise Trigger
- Lower Noise Ceiling (catches noise spikes)
- Enable Noise Gate

### Squelch Chatters (Rapid Open/Close)

**Symptoms:** Squelch rapidly toggles

**Solutions:**
- Increase Hysteresis
- Increase Squelch Throttle
- Increase Squelch Tail

### Squelch Too Slow to Open

**Symptoms:** Misses beginning of transmissions

**Solutions:**
- Decrease Squelch Throttle
- Decrease Squelch Tail
- Lower Squelch Level

### Squelch Cuts Out During Weak Signal

**Symptoms:** Audio drops during weak or fading signal

**Solutions:**
- Increase Squelch Tail
- Increase Hysteresis
- Lower Squelch Level
- Check Noise Ceiling (may be too low)

### Squelch Won't Close on Strong Noise

**Symptoms:** Noise blasts through squelch

**Solutions:**
- Lower Noise Ceiling
- Enable Noise Gate
- Increase Noise Trigger

---

## Squelch Override

When squelch override is active:
- Squelch is forced open
- Signal bar shows **'OV'** instead of 'RX' (BETA 05D+)
- Switching VFOs cancels override (BETA 05D+)

### APRS Compatibility (BETA 05C+)

**Do not use squelch override on the VFO that's set for APRS**

Can cause side buttons to stop working.

See [APRS Guide](../guides/aprs.md) for details.

---

## Related Documentation

- [Advanced Menu Reference](advanced-menu.md) - Noise Gate setting
- [APRS Guide](../guides/aprs.md) - Squelch override interactions
- [Calibration Guide](../guides/calibration.md) - Squelch hysteresis calibration

---

## Version History

- **ALPHA 17:** Squelch hysteresis range extended to 20, split into ExNoise and RSSI
- **ALPHA 18a:** Squelch Tail setting introduced, STE added
- **BETA 05D:** Squelch override indicator ('OV'), VFO switching cancels override
