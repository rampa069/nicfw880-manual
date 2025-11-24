---
title: "nicFW880 Chuleta de Estructura de Menús"
subtitle: "Referencia Rápida para Main Menu"
geometry: margin=1.5cm
fontsize: 9pt
header-includes: |
  \usepackage{longtable}
  \setlength{\LTleft}{0.15\textwidth}
  \setlength{\LTright}{0.15\textwidth}
---

# nicFW880 Chuleta de Estructura de Menús

**Acceder Main Menu:** Presionar botón GREEN | **Acceder Function Menu:** Presión larga GREEN

---

## Categorías del Main Menu

### Time
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Enable | Mostrar/ocultar visualización de reloj | On/Off |
| Format | Visualización de 24 horas o 12 horas | 24h/12h |
| Time Zone | Configurar zona horaria | - |

### GPS
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Enabled | Activar/desactivar funciones GPS | On/Off |
| Point Save | Guardar ubicación actual como waypoint | - |
| Gestión waypoints | Navegar, editar, eliminar waypoints | - |
| Units | Unidades de distancia | Imperial/Nautical/Metric |

### APRS
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Callsign | Tu indicativo de radioaficionado | - |
| SSID | ID de estación secundaria | 0-7 |
| Decode | Comportamiento de decodificación | On/Off/Popup |
| Popup Time | Duración popup | 0.1-9.9 segundos |
| Symbol | Código de símbolo APRS | - |
| Status | Campo de estado MIC-E | 0-7 |
| Beacon Time | Minutos entre balizas | Minutos |
| Beacon Distance | Disparo por distancia | Metros |
| Beacon Comment | Texto personalizado | Hasta 24 caracteres |
| APRS Deviation | Volumen de datos APRS | - |
| Hear Tones | Hacer APRS audible | On/Off |
| Digipeater Path | Configuración de ruta | Off/WIDE1-1/WIDE2-2/AX.25 |
| AX.25 Digipeater | Indicativo para ruta AX.25 | Predeterminado: ARISS |
| Enabled | Modo de operación APRS | Off/VFO-A/VFO-B/VFO-C/Active VFO |
| Ambiguity | Precisión de ubicación | 20m/200m/2km |
| Filter | Filtro AF para VFO APRS | On/Off |
| **Modo KISS** | | |
| Persist | Persistencia KISS | 1-255 |
| Slot Time | Tiempo de slot KISS | 0-200ms |

### DTMF
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Deviation | Volumen de tonos DTMF | - |
| Digit Time | Duración por dígito | Milisegundos |
| Gap Time | Silencio entre dígitos | Milisegundos |
| Start Pause | Retardo antes de tonos | Milisegundos |
| Preset | Editar secuencias DTMF | Hasta 99 presets |
| Decoding | Comportamiento de decodificación | Off/On/P-ID |
| Display For | Duración de visualización | Segundos |
| SeqEnd Pause | Pausa fin-de-secuencia | Segundos |

### Scanning
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Load | Cargar preset de escaneo | - |
| Save | Guardar configuración de escaneo actual | - |
| Delete | Eliminar preset de escaneo | - |

### Calibration
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Batt V Cal | Multiplicador calibración voltaje batería | - |
| Batt Full | Valor ADC batería completamente cargada | Valor ADC |
| Batt Flat | Valor ADC batería descargada | Valor ADC |
| XTAL671 | Factor de calibración de radiofrecuencia | - |
| Calibración potencia | Calibración de salida de potencia | - |

### Advanced
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| SPI Deferral | Retardo antes de guardar a flash | Segundos |
| Tone Monitor Time | Duración indicador CTCSS/DCS | Segundos |
| AM AGC Fix | AGC adicional para señales AM fuertes | - |
| Noise Gate | Silenciar en ruido excesivo | On/Off |
| AF Filters | Opciones de filtrado de audio | High Pass/Low Pass/De-emphasis/FSK |
| DTMF Deviation | Volumen de tonos DTMF | - |
| Repeater Tone | Frecuencia tono de repetidor | Hz (predeterminado: 1750) |
| TX Deviation | Cantidad de desviación FM | Predeterminado: 64 |
| Subtone Deviation | Nivel CTCSS/DCS | - |
| AM Hack Transform | Configuración experimental TX AM | - |
| AM Hack Displacement | Configuración de ganancia TX AM | - |
| Audio Boost | Aumentar ganancia de audio | On/Off |
| PIN | Configurar PIN de seguridad | - |
| PIN Action | Cuándo requerir PIN | Normal/Startup |
| Auto Lock | Tiempo bloqueo automático teclado | 0=Off, 10+ segundos (mín 10) |
| Wake LCD On | Disparador despertar LCD | Keys Only/RX/TX/All |

### Squelch
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Noise Ceiling | Umbral de ruido máximo | - |
| Noise Trigger | Umbral de ruido para apertura squelch | - |
| Squelch Level | Requisito de S-Unit | 0-9 |
| Noise Hysteresis | Buffer de estabilidad de ruido | 0-20 |
| Signal Hysteresis | Buffer de estabilidad de señal | 0-20 |
| Squelch Throttle | Retardo mín entre cambios estado | Unidades 0.1s |
| Squelch Tail | Verificaciones consecutivas antes cerrar | - |
| Squelch Tail Elimination | Aplicar STE | RX/TX/Both |

### Si4732 Tuner
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Presets | Presets de canales del tuner | - |
| Selección banda | Seleccionar banda de frecuencia | - |
| Configuración modulación | Configurar modo de modulación | - |
| Configuración BFO | Oscilador Frecuencia Batido | - |

### User Keys
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Asignar funciones | Asignar funciones usuario a teclas presión larga | - |
| Configurar comportamientos | Configurar comportamientos de teclas | - |
| Reasignar predeterminados | Reasignar funciones predeterminadas | - |

### Configuraciones VFO
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Permiso TX | Habilitar/deshabilitar transmisión | On/Off |
| Simplex/Duplex | Modo de operación | Simplex/Duplex |
| Offset | Desplazamiento de frecuencia | MHz |
| CTCSS/DCS | Configuración de subtono | - |
| Nivel potencia | Potencia de transmisión | Low/Med/High |
| Ancho de banda | Ancho de banda del canal | Wide/Narrow |
| Modulación | Tipo de modulación | FM/AM/SSB |

### Configuraciones Display
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Brightness | Brillo modo día | 0-100% |
| Brightness (Night) | Brillo modo noche | 0-100% |
| Selección skin | Elegir tema UI | - |
| Selección font | Elegir fuente de visualización | - |
| Configuración UI | Personalización de layout | - |

### Band Plan
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Edición Band Plan | Configurar límites banda frecuencia | Edición lado radio |

### System
| Configuración | Descripción | Valores/Rango |
|---------------|-------------|---------------|
| Shut Down | Apagado seguro (guarda cambios pendientes) | - |
| Factory Restore | Borrado completo áreas flash nicFW | Mantener EMG al encender |
| Versión firmware | Mostrar info de versión | - |

---

## Navegación de Menú

| Acción | Tecla | Notas |
|--------|-------|-------|
| Abrir Main Menu | GREEN | Desde modo radio normal |
| Navegar ítems | UP/DOWN | Desplazarse por ítems de menú |
| Seleccionar/Entrar | GREEN | Entrar a submenú o confirmar |
| Atrás/Cancelar | RED | Regresar al nivel anterior |
| Acceso rápido | LP-GREEN | Abre Function Menu |
| Salir a radio | RED | Desde nivel superior de menú |

---

## Atajos de Menú

| Desde Modo | Atajo | Accede |
|-----------|----------|----------|
| Radio Normal | GREEN | Main Menu |
| Módulo GPS | SP-GREEN | Main Menu |
| Sintonizador Si4732 | SP-GREEN | Main Menu |
| Spectrum Scope | SP-GREEN | Main Menu |
| Cualquier Modo | LP-GREEN | Function Menu |

---

## Function Menu

**Acceso rápido a funciones de usuario sin navegar main menu**

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

## Consejos de Referencia Rápida

- **Advertencia triángulo RED:** Cambios pendientes, usar Shut Down antes de apagar
- **Menús anidados:** Usar RED para volver un nivel a la vez
- **Menús de contexto:** Algunas funciones tienen opciones adicionales vía LP-GREEN

---

**Firmware:** nicFW880 | **Última:** v5.08.01 | **Autor:** nicsure
