# Calibration & Setup Guide

## Overview

nicFW880 provides calibration options for battery voltage and power output to ensure accurate readings and optimal performance.

## Battery Calibration

Proper battery calibration ensures accurate battery level display and reliable low-battery warnings.

### When to Calibrate

- After first firmware installation
- After battery replacement
- If battery readings seem inaccurate

### Calibration Process

#### Step 1: Full Charge Calibration

1. Charge battery **FULLY** (until charger indicates complete)
2. Open the Main Menu
3. Select **'Calibration'**
4. Adjust **'Batt V Cal'** until the reading in the Extra Info area shows **'8.4V'**
5. Adjust **'Batt Full'** to the same ADC value as shown in the Extra Info area

#### Step 2: Empty/Flat Calibration

1. Allow the battery to drain to what you consider to be almost flat
   - Recommendation: Don't let it go below 6.0V
   - You can set your own minimum threshold
2. Open the Main Menu
3. Select **'Calibration'**
4. Adjust **'Batt Flat'** to the same ADC value as shown in the Extra Info area

### Battery Voltage Information

#### Important Voltage Distinction

**Nominal voltage** vs **Fully charged voltage** are different:
- Battery nominal voltage: **7.4V** (what's printed on the battery)
- Fully charged voltage: **8.4V** (actual voltage when fully charged)

#### Voltage Reference Guide

- **8.4V:** Fully charged
- **7.4V:** Nominal voltage (battery rating)
- **6.0V:** Typically considered discharged

⚠️ **Note:** "You might want to up the lower limit, all of this is up to you, NOT ME!" - nicsure

The 6.0V discharge voltage is a guideline. You may want to set a higher threshold (e.g., 6.5V or 7.0V) to avoid over-discharging and extend battery life.

## Power Calibration (ALPHA 15+)

Fine-tune RF power output settings for your specific radio.

### Default Calibration

A default calibration setup is present when starting the RMS, based on the developer's radio.

You may need to fine-tune for your own radio.

### Calibration Process

Use the diagnostic firmware to experiment and discover optimal power settings:
- Bias settings
- Gain settings

**Reference:** https://www.patreon.com/posts/133266503?collection=1570664

### RMS Calibration

Power calibration can be adjusted in the RMS application for easier configuration.

## Calibration Menu Location

**Path:** Main Menu → Calibration

### Available Calibration Options

- **Batt V Cal:** Battery voltage calibration multiplier
- **Batt Full:** ADC value for fully charged battery
- **Batt Flat:** ADC value for discharged battery
- Power-related settings (varies by firmware version)

## Tips & Best Practices

### Battery Calibration Tips

1. **Use accurate measurements:**
   - Verify 8.4V with a multimeter if possible
   - Ensure good battery connection during calibration

2. **Don't over-discharge:**
   - Set "Batt Flat" conservatively
   - LiPo batteries shouldn't be fully depleted

3. **Recalibrate periodically:**
   - Battery characteristics change over time
   - Recalibrate after ~50 charge cycles or if readings drift

### Power Calibration Tips

1. **Test with SWR meter:**
   - Verify actual power output
   - Check across different frequencies

2. **Note your settings:**
   - Document working calibration values
   - Makes restoration easier after firmware updates

3. **Use diagnostic firmware:**
   - Allows real-time power measurement
   - Easier to find optimal settings

## Radio Frequency Calibration (XTAL671)

Fine-tune the crystal oscillator for accurate frequency transmission and reception.

### When to Calibrate

- After firmware installation if frequencies seem off
- If you notice frequency drift
- For precision work (repeater access, digital modes)

### Equipment Needed

- Two radios (one to calibrate, one as reference)
- Or: One radio + frequency counter/service monitor

### Calibration Process

#### Step 1: Choose Calibration Frequency

Choose a frequency to calibrate on, **the higher the better**.

**Example:** 433 MHz

**Tip:** It's usually best to pick a dead on MHz value to keep the maths simple (e.g., 433.000 instead of 433.125).

#### Step 2: Setup Both Radios

1. Tune both radios to the same frequency using **VFO mode**
2. **On the radio to tune:**
   - Set a RX squelch tone
   - Set the step to **0.1** (100 Hz)
3. **On the transmitting radio:**
   - Set the same TX squelch tone

#### Step 3: Find Frequency Limits

Find the upper and lower frequency limit where the squelch will correctly open.

**Example:** 433.00040 to 433.00210

Use the 0.1 kHz step to fine-tune and find exact limits.

#### Step 4: Calculate Midpoint

Calculate the midpoint between these two frequencies.

**Formula:** (Lower Limit + Upper Limit) / 2

**Example:** (433.00040 + 433.00210) / 2 = 433.00125

#### Step 5: Calculate Difference

Take the difference between the midpoint and the calibration frequency.

**Formula:** Midpoint - Calibration Frequency

**Example:** 433.00125 - 433.00000 = +0.00125 MHz = +125 Hz

**Note:** The result can be positive (+) or negative (-).

#### Step 6: Multiply by 671

Multiply the difference by 671.

**Formula:** Difference × 671

**Example:** +125 × 671 = +83,875

#### Step 7: Divide by Calibration Frequency

Divide the result by the calibration frequency (in MHz).

**Formula:** Result / Calibration Frequency (MHz)

**Example:** +83,875 / 433 = +193 (rounded)

#### Step 8: Enter Calibration Value

This is your correct factor to put into **Calibration → XTAL671**

**Path:** Main Menu → Calibration → XTAL671

Enter the calculated value (+193 in our example).

### Calibration Example Summary

```
Calibration Frequency: 433.000 MHz
Squelch Opens: 433.00040 to 433.00210 MHz
Midpoint: 433.00125 MHz
Difference: +125 Hz (+0.00125 MHz)
Calculation: (+125 × 671) / 433 = +193

Enter +193 in Calibration → XTAL671
```

### Verification

After entering the calibration value:
1. Retest squelch opening range
2. Should now be centered around calibration frequency
3. Fine-tune if necessary

### Tips for Accurate Calibration

1. **Use higher frequencies:**
   - Errors are more pronounced at higher frequencies
   - Easier to measure accurately
   - UHF (400+ MHz) is better than VHF (140+ MHz)

2. **Use round MHz values:**
   - Simplifies calculations
   - Examples: 433.000, 146.000, 440.000

3. **Stable transmitter:**
   - Use a quality reference radio
   - Or better: Use a service monitor or frequency counter

4. **Multiple measurements:**
   - Test at different frequencies
   - Average results for best accuracy

5. **Document your value:**
   - Note the XTAL671 value
   - Makes restoration easier after resets

## Other Calibration Settings

### Squelch Calibration (ALPHA 17+)

**Squelch hysteresis** settings:
- Split into ExNoise and RSSI settings
- Range limits extended to 20

See Main Menu → Squelch for options.

### 8.33 kHz Stepping (BETA 3B+)

Fixed 8.33 kHz stepping calibration for aviation band use.

## Troubleshooting

### Battery Reading Shows Wrong Voltage

**Solutions:**
1. Recalibrate Batt V Cal
2. Verify battery is actually fully charged (8.4V with multimeter)
3. Check battery connections

### Battery Icon Doesn't Match Actual Charge Level

**Solutions:**
1. Recalibrate Batt Full and Batt Flat
2. Ensure calibration was done at proper charge states
3. Battery may be aging (capacity decreased)

### Power Output Too Low/High

**Solutions:**
1. Recalibrate power settings using diagnostic firmware
2. Check antenna SWR
3. Verify not in low power mode

## Charging Icon (ALPHA 19+)

Charging icon added to display when battery is charging.

Helps confirm charging is active and provides visual feedback.

## Reset to Defaults

If calibration goes wrong:
1. Hold **EMG** while powering on (performs settings reset)
2. Wait for "DEFAULT SETTINGS" message
3. Wait for red triangle to disappear
4. Recalibrate from scratch

⚠️ **Note:** Settings reset will restore default calibration values and reset all settings.

## Version History

- **ALPHA 15:** Power Calibration introduced
- **ALPHA 17:** Squelch hysteresis calibration improvements
- **BETA 3B:** Fixed 8.33 kHz stepping
- **ALPHA 19:** Charging icon added
- **All versions:** Battery calibration available
