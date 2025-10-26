# Referencia de Estructura de Menús

Descripción general de la estructura del Main Menu en nicFW880.

**Acceso:** Presionar botón GREEN para abrir Main Menu

---

## Categorías de Menú

### Time
- **Enable:** Mostrar/ocultar visualización de reloj (BETA 04+)
- **Format:** Visualización de 24 horas o 12 horas (BETA 03+)
- **Time Zone:** Configurar zona horaria
- **(GPS Sync movido al menú GPS en BETA 04E)**

### GPS (BETA 02+)
- **Enabled:** Activar/desactivar funciones GPS (movido del menú Time en BETA 04E)
- **Point Save:** Guardar ubicación actual como waypoint
- **Gestión de waypoints:** Navegar, editar, eliminar waypoints
- **Units:** Imperial, Nautical, Metric
- **Otras configuraciones GPS**

### APRS (BETA 04E+)
- **Callsign:** Tu indicativo de radioaficionado
- **SSID:** ID de estación secundaria (0-7)
- **Decode:** On/Off/Popup
- **Popup Time:** Duración que popup permanece visible (0.1-9.9 segundos)
- **Symbol:** Código de símbolo APRS
- **Status:** Campo de estado MIC-E (0-7)
- **Beacon Time:** Minutos entre balizas automáticas
- **Beacon Distance:** Metros para disparar baliza basada en distancia
- **Beacon Comment:** Texto personalizado (hasta 24 caracteres)
- **APRS Deviation:** Volumen de datos APRS
- **Hear Tones:** Hacer datos APRS audibles (diagnóstico)
- **Digipeater Path:** Off, WIDE1-1, WIDE2-2, AX.25
- **AX.25 Digipeater:** Indicativo (predeterminado: ARISS)
- **Use VFO:** Asignar VFO específico para APRS (A/B/C) (BETA 05D+)
- **Ambiguity:** Precisión de ubicación (20m, 200m, 2km)
- **Configuraciones modo KISS (BETA 04F+)**
  - Persist: 1-255
  - Slot Time: 0-200ms

### DTMF (BETA 01+)
- **Deviation:** Volumen de tonos DTMF
- **Digit Time:** Duración de transmisión de cada dígito (ms)
- **Gap Time:** Silencio entre dígitos (ms)
- **Start Pause:** Retardo antes de que comiencen tonos (ms)
- **Preset:** Editar secuencias de dígitos DTMF (hasta 99 presets)
- **Decoding:** Off/On/P-ID (BETA 02+)
- **Display For:** Cuánto tiempo se muestran dígitos decodificados (segundos) (BETA 02+)
- **SeqEnd Pause:** Pausa marcando fin de secuencia (segundos) (BETA 02+)

### Scanning (ALPHA 19+)
- **Load:** Cargar preset de escaneo
- **Save:** Guardar configuración de escaneo actual
- **Delete:** Eliminar preset de escaneo
- **Configuración de preset de escaneo**

### Calibration
- **Batt V Cal:** Multiplicador de calibración de voltaje de batería
- **Batt Full:** Valor ADC para batería completamente cargada
- **Batt Flat:** Valor ADC para batería descargada
- **XTAL671:** Factor de calibración de radiofrecuencia
- **Configuraciones de calibración de potencia (ALPHA 15+)**
- **Otras opciones de calibración**

### Advanced
- **SPI Deferral:** Retardo antes de guardar a flash (segundos)
- **Tone Monitor Time:** Duración de indicador CTCSS/DCS (segundos)
- **AM AGC Fix:** AGC adicional para señales AM fuertes
- **Noise Gate:** Silenciar en ruido excesivo
- **AF Filters:** High Pass, Low Pass, De-emphasis, FSK
- **DTMF Deviation:** Volumen de tonos DTMF
- **Repeater Tone:** Frecuencia en Hz (predeterminado 1750 Hz)
- **TX Deviation:** Cantidad de desviación FM (predeterminado 64)
- **Subtone Deviation:** Nivel CTCSS/DCS
- **AM Hack Transform:** Configuración experimental TX AM (ALPHA 19+)
- **AM Hack Displacement:** Configuración de ganancia TX AM (ALPHA 19+)
- **Audio Boost:** Aumentar ganancia de audio (BETA 04F+)
- **PIN:** Configurar PIN de seguridad (BETA 03+)
- **PIN Action:** Normal/Startup (BETA 3A+)
- **Wake LCD On:** Keys Only/RX/TX/All (BETA 03+)

### Squelch
- **Noise Ceiling:** Umbral de ruido máximo
- **Noise Trigger:** Umbral de ruido para apertura de squelch
- **Squelch Level:** Requisito de S-Unit (0-9)
- **Noise Hysteresis:** Buffer de estabilidad de ruido (ALPHA 17+: 0-20)
- **Signal Hysteresis:** Buffer de estabilidad de señal (ALPHA 17+: 0-20)
- **Squelch Throttle:** Retardo mínimo entre cambios de estado (unidades 0.1s)
- **Squelch Tail:** Verificaciones consecutivas antes de cerrar (ALPHA 18a+)
- **Squelch Tail Elimination (STE):** RX/TX/Both (ALPHA 18a+)

### Si4732 Tuner (ALPHA 17+)
- **Presets:** Presets de canales del tuner
- **Selección de banda**
- **Configuraciones de modulación**
- **Configuraciones BFO**
- **Otras opciones del tuner**

### User Keys
- **Asignar funciones de usuario a teclas de presión larga**
- **Configurar comportamientos de teclas**
- **Reasignar funciones predeterminadas**

### Configuraciones VFO
- **Permiso TX**
- **Simplex/Duplex**
- **Offset**
- **CTCSS/DCS**
- **Nivel de potencia**
- **Ancho de banda**
- **Modulación**
- **Otros parámetros VFO**

### Configuraciones Display
- **Brightness:** Brillo modo día
- **Brightness (Night):** Brillo modo noche (ALPHA 13+)
- **Selección de skin**
- **Selección de font**
- **Configuración UI (ALPHA 12+)**

### System
- **Shut Down:** Apagado seguro (guarda cambios pendientes)
- **Factory Reset:** Mantener EMG al encender
- **Info de versión de firmware**
- **Otras configuraciones del sistema**

---

## Navegación de Menú

### Controles Básicos
- **UP/DOWN:** Navegar ítems de menú
- **GREEN:** Seleccionar / Entrar a submenú / Confirmar
- **RED:** Atrás / Cancelar
- **Long-press GREEN:** Acceso rápido a ciertas funciones (dependiente de contexto)

### Consejos
- **Advertencia triángulo RED:** Cambios pendientes, usar Shut Down antes de apagar
- **Menús anidados:** Usar RED para volver un nivel
- **Salida rápida:** Usualmente RED desde nivel superior regresa a modo radio

---

## Function Menu (ALPHA 15+)

**Acceso:** LP-GREEN (predeterminado)

Navegar y activar cualquier función de usuario sin navegar main menu.

**Funciones disponibles:**
- Scan Presets
- Spectrum Scope
- Módulo GPS
- Sintonizador Si4732
- Frequency Counter
- Menú DTMF Preset
- Crossband Repeater
- Todas las demás funciones de usuario asignables

---

## Notas Específicas de Versión

### ALPHA 12+
UI configurable introducida - layout y elementos de visualización personalizables

### ALPHA 15+
Function Menu añadido para acceso rápido a funciones de usuario

### BETA 03+
Categoría menú GPS expandida significativamente con gestión de waypoints

### BETA 04E+
Categoría menú APRS añadida con configuraciones APRS integrales

### BETA 05D+
Configuración APRS "Use VFO" añadida para asignación de VFO

---

## Atajos de Menú

| Desde Modo | Atajo | Accede |
|-----------|----------|----------|
| Radio Normal | GREEN | Main Menu |
| Módulo GPS | SP-GREEN | Main Menu |
| Sintonizador Si4732 | SP-GREEN | Main Menu |
| Spectrum Scope | SP-GREEN | Main Menu (BETA 05F+) |
| Cualquier Modo | LP-GREEN | Function Menu |

---

## Documentación Relacionada

- [Detalles Menú Advanced](advanced-menu.md)
- [Detalles Configuraciones Squelch](squelch-settings.md)
- [Guía Calibración](../guides/calibration.md)
- [Referencia Atajos de Teclado](key-shortcuts.md)
