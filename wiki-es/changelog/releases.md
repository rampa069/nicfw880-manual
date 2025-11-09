# Registro de Versiones Oficiales

Este es el registro principal de cambios para las versiones estables oficiales de nicFW880.

Para versiones de desarrollo, consulta:
- [Versiones BETA](beta-releases.md) - Versiones de prueba en desarrollo
- [Versiones ALPHA](alpha-releases.md) - Versiones de desarrollo temprano

---

## Cómo Leer Este Registro

Cada entrada de versión incluye:
- **Número de versión** y fecha de lanzamiento
- **Características principales** - Nueva funcionalidad añadida
- **Mejoras** - Mejoras a características existentes
- **Correcciones de errores** - Problemas resueltos
- **Problemas conocidos** - Cualquier problema pendiente (si aplica)

---

<!-- Las nuevas versiones se añadirán debajo de esta línea, las más recientes primero -->

## Versión 5.08.01 (7 de noviembre de 2025)

🎉 **Primera Versión Estable Oficial**

Esta es la primera versión lista para producción de nicFW880, consolidando todas las características del extenso ciclo de desarrollo BETA en un firmware estable y probado.

### Novedades de Esta Versión

**Sistema de Localización Maidenhead**
- Añadido soporte para el sistema de localización por cuadrícula Maidenhead
- Comúnmente usado en radioafición para reportar ubicaciones

**Mejoras en Scrambler**
- Límite superior de frecuencia del scrambler aumentado a 4500 Hz
- Proporciona más opciones de scrambling para comunicaciones seguras

**Mejoras en RMS (Radio Management Software)**
- Nueva pestaña 'Settings' - interfaz de configuración completa
- Nueva pestaña 'Calibration' - procedimientos de calibración simplificados
- Trabajo significativo de preparación para lanzamiento mainstream

### Características Principales (del ciclo BETA)

Esta versión incluye toda la funcionalidad desarrollada a través de BETA 01-07C:

**Características de Comunicación:**
- Soporte completo de APRS con mensajería y seguimiento
- Funcionalidad GPS con navegación y waypoints
- Codificación/decodificación DTMF con sistema de presets
- Capacidad Multiwatch
- Funcionalidad de repetidor crossband

**Características Avanzadas:**
- Analizador de espectro (Spectrum Scope)
- Soporte del módulo sintonizador Si4732 (AM/FM/SSB)
- Escaneo configurable con múltiples modos
- Gestión de canales y frecuencias

**Características del Sistema:**
- Estructura de menús completa
- Mapeo de teclas personalizable
- Gestión de energía y monitoreo de batería
- Herramientas de calibración RF

### Notas

- Esta versión se centró principalmente en estabilizar el código BETA
- Todas las características han sido probadas extensivamente
- El software RMS incluye actualizaciones importantes para mejor experiencia de usuario

Para el historial detallado de desarrollo, consulta [Versiones BETA](beta-releases.md) y [Versiones ALPHA](alpha-releases.md).

---

## Acerca de los Números de Versión

**Las versiones oficiales** usan versionado semántico (1.0, 1.1, 2.0, etc.):
- **Versiones mayores** (1.0 → 2.0): Nuevas características significativas o cambios importantes
- **Versiones menores** (1.0 → 1.1): Nuevas características y mejoras
- **Versiones de parche** (1.1.0 → 1.1.1): Correcciones de errores y ajustes menores

**Las versiones de desarrollo** (BETA/ALPHA) no están listas para producción y se usan para probar nuevas características.
