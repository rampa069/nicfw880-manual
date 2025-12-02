# nicFW880 Manual

<p align="center">
  <strong>Complete user manual for nicFW880 custom firmware</strong><br>
  For Radtel RT-880, RT-880G, and iRadio UV-98 Plus radios
</p>

---

## 📚 Languages / Idiomas

| Language | Manual | Status |
|----------|--------|--------|
| 🇬🇧 English | [wiki/](wiki/) | ✅ Complete (19 files) |
| 🇪🇸 Español | [wiki-es/](wiki-es/) | ✅ Completo (19 archivos) |

## 📖 Documentation

### English Manual
- **[Getting Started](wiki/README.md)** - Main navigation
- **[User Guides](wiki/guides/)** - APRS, GPS, DTMF, Scanning, Spectrum Scope, and more
- **[Reference](wiki/reference/)** - Menu structure, key shortcuts, troubleshooting
- **[Changelog](wiki/changelog/)** - Version history
  - **[Official Releases](wiki/changelog/releases.md)** ⭐ - Stable versions (main changelog)
  - [BETA Releases](wiki/changelog/beta-releases.md) - Development testing versions
  - [ALPHA Releases](wiki/changelog/alpha-releases.md) - Early development versions

### Manual en Español
- **[Inicio](wiki-es/README.md)** - Navegación principal
- **[Guías de Usuario](wiki-es/guides/)** - APRS, GPS, DTMF, Escaneo, Spectrum Scope, y más
- **[Referencia](wiki-es/reference/)** - Estructura de menús, atajos de teclado, solución de problemas
- **[Registro de Cambios](wiki-es/changelog/)** - Historial de versiones
  - **[Versiones Oficiales](wiki-es/changelog/releases.md)** ⭐ - Versiones estables (registro principal)
  - [Versiones BETA](wiki-es/changelog/beta-releases.md) - Versiones de prueba en desarrollo
  - [Versiones ALPHA](wiki-es/changelog/alpha-releases.md) - Versiones de desarrollo temprano

## 🎯 Quick Access

### For New Users
- [Key Shortcuts Reference (EN)](wiki/reference/key-shortcuts.md) | [(ES)](wiki-es/reference/key-shortcuts.md)
- [Menu Structure (EN)](wiki/reference/menu-structure.md) | [(ES)](wiki-es/reference/menu-structure.md)
- [Troubleshooting (EN)](wiki/reference/troubleshooting.md) | [(ES)](wiki-es/reference/troubleshooting.md)

### Popular Topics
- [APRS Guide (EN)](wiki/guides/aprs.md) | [(ES)](wiki-es/guides/aprs.md)
- [GPS Navigation (EN)](wiki/guides/gps.md) | [(ES)](wiki-es/guides/gps.md)
- [Spectrum Scope (EN)](wiki/guides/spectrum-scope.md) | [(ES)](wiki-es/guides/spectrum-scope.md)
- [Calibration (EN)](wiki/guides/calibration.md) | [(ES)](wiki-es/guides/calibration.md)
- [RMS Remote Protocol (EN)](wiki/guides/rms-remote-protocol.md) | [(ES)](wiki-es/guides/rms-remote-protocol.md) - Technical docs

## 📋 Quick Reference Cheat Sheets

### Key Mapping Cheat Sheet

Quick reference card with all key shortcuts and combinations:

- **[English Cheat Sheet](KEYMAP-CHEATSHEET-EN.md)** - Quick reference for all key mappings
- **[Chuleta en Español](KEYMAP-CHEATSHEET-ES.md)** - Referencia rápida de atajos de teclas

PDF versions available in releases: `nicFW880-KeyMap-EN-{version}.pdf` / `nicFW880-KeyMap-ES-{version}.pdf`

### Menu Structure Cheat Sheet

Quick reference card with complete menu structure and all settings:

- **[English Menu Cheat Sheet](MENU-CHEATSHEET-EN.md)** - Complete menu structure reference
- **[Chuleta de Menús en Español](MENU-CHEATSHEET-ES.md)** - Referencia completa de estructura de menús

PDF versions available in releases: `nicFW880-Menu-EN-{version}.pdf` / `nicFW880-Menu-ES-{version}.pdf`

## 🔗 Official Resources

- **Firmware Author**: [nicsure on Patreon](https://www.patreon.com/c/nicsure/posts)
- **RMS Software**: [nicfw880-rms-builder on GitHub](https://github.com/nicsure/nicfw880-rms-builder/)
- **Latest Stable Release**: 🎉 **v5.08.02C** (December 2, 2025) - [Release Notes](wiki/changelog/releases.md)
- **Previous Releases**: v5.08.02B, v5.08.01, BETA 01-07C, ALPHA 12-19

> **Note**: This manual documents the **latest stable release (v5.08.02C)**. For version history, see the [changelog](wiki/changelog/).

## 📋 Supported Hardware

- Radtel RT-880
- Radtel RT-880G (with GPS)
- iRadio UV-98 Plus

**⚠️ Important**: Only radios with serial numbers > 300 are supported.

## 📦 What's Included

This manual covers:
- ✅ Complete feature documentation for **v5.08.02C** (stable release)
- ✅ Step-by-step guides for all major features
- ✅ Troubleshooting for common issues
- ✅ Version history:
  - **Official Releases** (stable versions) - [v5.08.02C Release Notes](wiki/changelog/releases.md)
  - Development history (ALPHA 12-19, BETA 01-07C) in separate changelogs
- ✅ Calibration procedures
- ✅ Key mappings and shortcuts
- ✅ Menu structure reference

## 🚀 Getting Started

1. **Check your radio model** - Ensure you have a supported model with serial > 300
2. **Read the [Troubleshooting Guide](wiki/reference/troubleshooting.md)** first if you're having issues
3. **Browse by topic** - Use the guides above to learn specific features
4. **Check version notes** - See [Changelog](wiki/changelog/) for version-specific information

## 📄 PDF Manuals

Pre-built PDF versions of the manuals and cheat sheets are available as release assets on GitHub.

### Build PDFs Locally

```bash
./build-pdf.sh
```

Generated PDFs will be in the `pdf-output/` directory:
- `nicFW880-Manual-EN-{version}.pdf` - English manual (full)
- `nicFW880-Manual-ES-{version}.pdf` - Spanish manual (full)
- `nicFW880-KeyMap-EN-{version}.pdf` - English key mapping cheat sheet
- `nicFW880-KeyMap-ES-{version}.pdf` - Spanish key mapping cheat sheet
- `nicFW880-Menu-EN-{version}.pdf` - English menu structure cheat sheet
- `nicFW880-Menu-ES-{version}.pdf` - Spanish menu structure cheat sheet

For detailed build instructions, dependencies, and customization options, see [BUILD.md](BUILD.md).

## 🤝 Contributing

This is a community-compiled manual based on nicsure's Patreon posts. If you find errors or have improvements:
- Open an issue
- Submit a pull request
- Suggest corrections or additions

## ⚖️ License & Attribution

This manual is compiled from information shared on [nicsure's Patreon](https://www.patreon.com/c/nicsure).

- **Firmware**: Copyright © nicsure
- **Documentation compilation**: Community effort
- **Manual compilation**: 2025

All firmware terms and brand names are property of their respective owners.

## 📊 Manual Status

| Section | English | Español | Files |
|---------|---------|---------|-------|
| Guides | ✅ | ✅ | 11 + 11 |
| Changelog | ✅ | ✅ | 3 + 3 |
| Reference | ✅ | ✅ | 5 + 5 |
| Main README | ✅ | ✅ | 1 + 1 |
| **Total** | **20** | **20** | **40 files** |

**Coverage**:
- **Stable release**: v5.08.02C (includes RMS Remote Protocol documentation)
- **Previous releases**: v5.08.02B, v5.08.01
- **Development versions**: ALPHA 12-19, BETA 01-07C (in separate changelogs)

---

<p align="center">
  Made with ❤️ for the RT-880 community<br>
  <strong>nicFW880</strong> - Custom firmware by <a href="https://www.patreon.com/c/nicsure">nicsure</a>
</p>
