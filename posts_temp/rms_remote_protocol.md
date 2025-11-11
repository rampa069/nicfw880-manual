# nicFW880 Remote Protocol Documentation

**Type:** Technical Documentation
**Date:** November 2025
**Source:** nicsure's Patreon

---

By request, here is the nicFW880 remote protocol

## Remote Activation

To begin send the "Change BAUD" sequence at 38400 baud

0xaa

0x70

[4 bytes little endian, New BAUD rate]

The radio will acknowledge with

0x70

at this point change the host's BAUD rate to match. 100ms later the radio will send another acknowledge at the new BAUD rate

0x70

Now send the "Start Remote" sequence.

0xAA

0x51

Remote operation is now active.

## Remote Operation

The host must every second send a PING byte

0xAA

the radio will acknowledge this (PONG) with the same byte

0xAA

### HOST to RADIO commands.
These are single byte commands and are NOT acknowledged.

0x13 - PTT pressed

0xFE - PTT Released

0x00 to 0x12 - Keypad key pressed

0xFF - Keypad key released

0x52 - Exit remote

### RADIO to HOST commands.

**Draw Text**

0x02 = Packet signature

[1 byte] = Screen X coordinate

[2 bytes little endian] = Screen Y coordinate

[1 byte] = Font Number

0x00 = 8x8 ASCII Font

0x01 = 8x16 ASCII Font

0x02 = 16x16 ASCII Font

0x03 = 16x24 ASCII Font

0x04 = 24x24 ASCII Font

0x05 = 24x32 ASCII Font

0x06 = 16x16 Symbols Font

[2 bytes] = RGB565 background colour

[2 bytes] = RGB565 foreground colour

[variable bytes] Null terminated ASCII text

**Draw Rectangle**

0x01 = Packet signature

[1 byte] = Screen X coordinate

[2 bytes little endian] = Screen Y coordinate

[1 byte] = Width

[2 bytes little endian] = Height

[2 bytes] = RGB565 colour

---

**Source:** nicsure's Patreon
**Added to manual:** November 2025
