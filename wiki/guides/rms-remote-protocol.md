# RMS Remote Protocol

The nicFW880 Remote Protocol allows external applications to control the radio remotely via serial connection. This enables features like remote display, keypad emulation, and PTT control.

## Overview

The remote protocol uses a serial connection with configurable BAUD rate and provides:
- Remote display rendering (text and graphics)
- Keypad key emulation
- PTT (Push-To-Talk) control
- Bidirectional communication with keepalive mechanism

---

## Initial Connection

### Step 1: Change BAUD Rate

Start at **38400 baud** and send the "Change BAUD" sequence:

```
0xAA
0x70
[4 bytes little endian] New BAUD rate
```

**Radio Response:**
```
0x70
```

**Action Required:**
1. Upon receiving `0x70`, change host BAUD rate to match the new rate
2. Wait 100ms
3. Radio will send another acknowledge at the new BAUD rate:
   ```
   0x70
   ```

### Step 2: Start Remote Operation

Send the "Start Remote" sequence:

```
0xAA
0x51
```

Remote operation is now active.

---

## Keepalive (PING/PONG)

To maintain the remote connection, the **host must send a PING every second**:

**Host sends (PING):**
```
0xAA
```

**Radio responds (PONG):**
```
0xAA
```

If keepalive is not maintained, the remote connection may timeout.

---

## Host to Radio Commands

These are **single byte commands** and are **NOT acknowledged** by the radio.

| Command | Byte | Description |
|---------|------|-------------|
| **PTT Pressed** | `0x13` | Activate transmit (PTT down) |
| **PTT Released** | `0xFE` | Deactivate transmit (PTT up) |
| **Keypad Key Pressed** | `0x00` to `0x12` | Simulate keypad button press (see keymap below) |
| **Keypad Key Released** | `0xFF` | Release currently pressed key |
| **Exit Remote** | `0x52` | Exit remote control mode |

### Keypad Key Map

The keypad keys are mapped to bytes `0x00` through `0x12` (19 keys total):

| Byte | Key | Byte | Key | Byte | Key |
|------|-----|------|-----|------|-----|
| `0x00` | 0 | `0x07` | 7 | `0x0E` | Side Key 2 |
| `0x01` | 1 | `0x08` | 8 | `0x0F` | Exit |
| `0x02` | 2 | `0x09` | 9 | `0x10` | Menu |
| `0x03` | 3 | `0x0A` | * (Star) | `0x11` | Up |
| `0x04` | 4 | `0x0B` | # (Hash) | `0x12` | Down |
| `0x05` | 5 | `0x0C` | Emergency | - | - |
| `0x06` | 6 | `0x0D` | Side Key 1 | - | - |

**Note:** To simulate a key press, send the key byte (`0x00` to `0x12`), then send `0xFF` to release.

---

## Radio to Host Commands

The radio sends drawing commands to render the display on the host.

### Draw Text Command

Renders text on the screen with specified font and colors.

**Packet Structure:**

| Byte(s) | Field | Description |
|---------|-------|-------------|
| 1 | Signature | `0x02` - Text drawing command |
| 1 | X Coordinate | Screen X position (0-255) |
| 2 | Y Coordinate | Screen Y position (little endian, 0-65535) |
| 1 | Font Number | Font selection (see table below) |
| 2 | Background Color | RGB565 format (little endian) |
| 2 | Foreground Color | RGB565 format (little endian) |
| Variable | Text | Null-terminated ASCII string |

**Font Numbers:**

| Font Number | Description |
|-------------|-------------|
| `0x00` | 8×8 ASCII Font |
| `0x01` | 8×16 ASCII Font |
| `0x02` | 16×16 ASCII Font |
| `0x03` | 16×24 ASCII Font |
| `0x04` | 24×24 ASCII Font |
| `0x05` | 24×32 ASCII Font |
| `0x06` | 16×16 Symbols Font |

**Color Format (RGB565):**
- 16-bit color format
- 5 bits Red, 6 bits Green, 5 bits Blue
- Little endian byte order

### Draw Rectangle Command

Draws a filled rectangle on the screen.

**Packet Structure:**

| Byte(s) | Field | Description |
|---------|-------|-------------|
| 1 | Signature | `0x01` - Rectangle drawing command |
| 1 | X Coordinate | Screen X position (0-255) |
| 2 | Y Coordinate | Screen Y position (little endian, 0-65535) |
| 1 | Width | Rectangle width in pixels (0-255) |
| 2 | Height | Rectangle height in pixels (little endian, 0-65535) |
| 2 | Color | RGB565 format fill color (little endian) |

---

## Implementation Notes

### BAUD Rate Configuration

- Initial connection must be at **38400 baud**
- After BAUD change, wait **100ms** before expecting radio response
- Common BAUD rates: 9600, 19200, 38400, 57600, 115200

### Timing Requirements

- **PING keepalive:** Must be sent every second
- **BAUD change delay:** 100ms between host and radio BAUD switch
- **Command timing:** Single byte commands have no acknowledgment delay

### Error Handling

- If PING/PONG fails, connection may be lost
- No acknowledgment for keypad/PTT commands means no error feedback
- Monitor connection health via PING/PONG mechanism

### Display Rendering

- Host application must implement RGB565 to native display format conversion
- Text rendering requires implementation of the specified font sizes
- Rectangle drawing provides basic graphics primitives for UI elements

---

## Example Implementation Flow

1. **Connect at 38400 baud**
2. **Send BAUD change command** (e.g., to 115200)
3. **Wait for first ACK** (`0x70`)
4. **Change host BAUD to 115200**
5. **Wait 100ms**
6. **Receive second ACK** (`0x70` at 115200)
7. **Send Start Remote** (`0xAA 0x51`)
8. **Start PING loop** (send `0xAA` every second, expect `0xAA` back)
9. **Process drawing commands** from radio
10. **Send keypad/PTT commands** as needed
11. **Exit with** `0x52` when done

---

## Use Cases

### Remote Display Application
- Render radio display on PC/mobile device
- Useful for desktop software or mobile apps
- Enables remote monitoring of radio status

### Remote Control Application
- Control radio from PC via serial
- Automate radio operations
- Integration with logging software or digital modes

### Custom RMS Integration
- Build custom Radio Management Software
- Implement specialized control interfaces
- Create automation tools

---

## Related

- [Calibration Guide](calibration.md) - Serial connection setup for calibration
- [Key Mappings](key-mappings.md) - Physical key reference for remote keypad emulation

---

**Protocol Version:** v5.08.01
**Last Updated:** November 2025
