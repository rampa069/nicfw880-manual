# Guía del Módulo Sintonizador Si4732

## Descripción General

El Módulo Sintonizador Si4732 es un receptor incorporado de radiodifusión/onda corta que permite escuchar transmisiones FM, AM, SSB y onda corta.

**Primera introducción:** ALPHA 16 (solo FM)
**Soporte completo de bandas:** ALPHA 17 (LW, MW, SW añadidas)
**Últimas actualizaciones:** BETA 02, BETA 03

⚠️ **IMPORTANTE:** Los modos USB y LSB requieren proceso de restauración SPI Flash. Ver sección Instalación.

## Instalación y Configuración

### Restauración SPI Flash (Requerida para USB/LSB)

Debes seguir el proceso de restauración SPI Flash para que los modos USB y LSB operen correctamente.

Después de restaurar el SPI Flash:
1. Cierra el RMS
2. Vuelve a abrirlo

## Bandas Soportadas

### FM
Banda de radiodifusión FM

### LW (Longwave)
Transmisiones de onda larga

### MW (Mediumwave)
Banda de radiodifusión MW / AM

### SW (Shortwave)
Onda corta dividida en tres bandas:
- **SW1:** 1.7 – 6.0 MHz
- **SW2:** 6.0 – 12 MHz
- **SW3:** 12 – 30 MHz

## Activación

**Tecla predeterminada:** LP-8 (reasignable)

## Modos de Operación

### Modo VFO
Sintonización manual de frecuencia y búsqueda.

### Modo Channel
Usar canales/frecuencias preestablecidos.

**Alternar:** LP-GREEN

## Controles de Teclas

### Teclas de Presión Corta (SP)

#### ALPHA 16 / Versiones Tempranas:
- **SP-0 a 9:** Introducir nueva frecuencia
- **SP-Red:** Salir del tuner / detener búsqueda
- **SP-#:** Buscar hacia adelante
- **SP-\*:** Buscar en reversa
- **LP-#:** Alternar scope encendido/apagado
- **LP-\*:** Alternar silenciamiento (squelch) encendido/apagado

#### ALPHA 17+ / Versiones Actuales:
- **SP-RED:** Salir del tuner / detener búsqueda
- **SP-GREEN:** Abrir Main Menu
- **SP-0–9:**
  - Modo VFO: Introducir nueva frecuencia
  - Modo Channel: Introducir nuevo número de canal
- **SP-\*:** Buscar hacia atrás (solo VFO)
- **SP-#:** Buscar hacia adelante (solo VFO)
- **SP-S1:** Cambiar band (solo VFO)
- **SP-S2:** Cambiar modulation (solo VFO)

#### Actualizaciones BETA 02+:
- **SP-EMG:** Alternar visualización Day/Night
- **SP-\* / #:** Ajustar BFO
- **SP-Up/Down:** Paso de frecuencia VFO / número de canal / dirección de búsqueda
- **SP-Green:** Abrir Main Menu
- **SP-S1:** Cambiar Band
- **SP-S2:** Cambiar Modulation
- **SP-Red:** Alternar modo VFO/Channel

### Teclas de Presión Larga (LP)

#### ALPHA 17:
- **LP-GREEN:** Alternar modos VFO/Channel
- **LP-1:** Introducir nuevo paso de frecuencia
- **LP-2:** Alternar modo de ajuste BFO
- **LP-3:** Reiniciar BFO a cero
- **LP-#:** Alternar scope encendido/apagado
- **LP-\*:** Alternar squelch/silenciamiento encendido/apagado (Solo aconsejado para modo FM)

#### ALPHA 18a / BETA 02+:
- **LP-1 / 3:** Buscar Abajo / Buscar Arriba
- **LP-2:** Reiniciar BFO a 0
- **LP-4:** Introducir nuevo paso de frecuencia
- **LP-5:** Alternar S-Meter (reduce interferencia)
- **LP-6:** Alternar squelch (solo WFM)
- **LP-7:** Activar/desactivar scope (>18 MHz, dual antennas requeridas)
- **LP-8:** Alternar filtro de línea de potencia
- **LP-9:** Alternar ancho de banda AM (6/4/3/2/1 kHz) o alternar ancho de banda AM
- **LP-Red:** Salir del modo tuner
- **LP-Green:** Menú de lista de selección de funciones

⚠️ **Nota:** Las asignaciones de teclas han evolucionado a través de versiones. Las asignaciones más recientes (BETA 02+) se listan arriba.

## Características

### BFO (Beat Frequency Oscillator)
Para recepción SSB (USB/LSB) y CW.

**Controles:**
- **SP-\* / #:** Ajustar BFO (BETA 02+)
- **LP-2:** Alternar modo de ajuste BFO (ALPHA 17)
- **LP-3:** Reiniciar BFO a cero

**Corrección ALPHA 17a:** Ajuste BFO ahora funciona en modo channel.

### Control de Ancho de Banda (ALPHA 18a+)

Ancho de banda variable para recepción AM.

**Opciones:** 6 / 4 / 3 / 2 / 1 kHz

**Control:** LP-9

### Medidor de Señal (ALPHA 18a+)

Muestra intensidad de señal. Se puede deshabilitar para reducir ruido en ciertas frecuencias.

**Control:** LP-5 (Activar/desactivar)

### Filtro de Línea de Potencia (ALPHA 18a+)

Reduce interferencia de líneas de energía.

**Control:** LP-8 (Alternar)

### Squelch/Silenciamiento

Silencia audio cuando no hay señal presente.

**Control:** LP-6 (solo WFM, BETA 02+) o LP-\* (versiones anteriores)

⚠️ **Nota:** Solo aconsejado para modo FM.

### Scope (ALPHA 17+)

Visualización de espectro visual en modo tuner.

**Activación:** LP-# o LP-7 (dependiente de versión)

**Requisitos (BETA 02):**
- Frecuencia >18 MHz
- Dual antennas requeridas

**Corrección ALPHA 3C:** SP-Red ahora detiene búsqueda en modo tuner.

### Tiempo de Espera de Pantalla (ALPHA 18a+)

El tiempo de espera de pantalla ahora funciona en modo tuner.

## Presets (ALPHA 17+)

Almacena estaciones favoritas para acceso rápido.

### Crear/Editar Presets

**Método 1: App RMS**
- Usar RMS → Tuner Presets
- Información de banda se infiere de frecuencia (no necesita especificar)

**Método 2: Menú CMS (En la Radio)**
- Navegar al menú CMS
- Presets almacenados/numerados como slots de canales regulares

**Nota:** Tuner Presets en RMS no necesitan información de banda. La banda se infiere de la frecuencia.

## Monitor HT en Modo Tuner (BETA 03+)

Si Multiwatch está activado y los VFOs no mezclan frecuencias HF y VHF/UHF y scope está desactivado:

- Cualquier señal recibida en uno de los tres VFOs interrumpirá temporalmente el tuner
- Cambia de vuelta a modo HT
- Después del MW Pause configurado, el modo Si4732 se reanuda automáticamente

## Menú de Funciones (BETA 02+)

**Acceso:** LP-GREEN

Abre menú de lista de selección de funciones para acceso rápido a características del tuner.

## Tipos de Modulación

Modulaciones soportadas (dependiente de versión):
- **FM** (WFM - Wide FM)
- **AM**
- **USB** (Upper Sideband) - requiere restauración SPI Flash
- **LSB** (Lower Sideband) - requiere restauración SPI Flash
- **CW** (Continuous Wave) - corregido en ALPHA 17a

## Solución de Problemas

### USB/LSB No Funciona
**Solución:** Seguir proceso de restauración SPI Flash. Cerrar y reabrir RMS después de restauración.

### Medidor de Señal Causa Ruido
**Solución:** Deshabilitar medidor de señal con LP-5

### Interferencia de Línea de Potencia
**Solución:** Activar filtro de línea de potencia con LP-8

### Problemas de Modo CW
**Corregido en:** ALPHA 17a

### La Búsqueda No Se Detiene
**Corregido en:** ALPHA 3C (SP-Red detiene búsqueda)

### Altavoz Silenciado
**Corregido en:** BETA 04A (silenciamiento de altavoz en modo tuner Si4732)

## Altavoz/Amplificador (BETA 3C+)

Altavoz/Amplificador se apaga después de 10 segundos de inactividad para ahorrar batería.

## Historial de Versiones

- **ALPHA 16:** Lanzamiento inicial del tuner FM
- **ALPHA 17:** Bandas LW, MW, SW añadidas, presets, BFO
- **ALPHA 17a:** Corrección modo CW, BFO en modo channel
- **ALPHA 18a:** Control de ancho de banda, alternar S-meter, filtro de línea de potencia, tiempo de espera de pantalla
- **BETA 02:** Menú de funciones, controles de teclas actualizados
- **BETA 03:** Integración Monitor HT con Multiwatch
- **BETA 04A:** Corrección de silenciamiento de altavoz
- **BETA 05F/05G:** Mejoras en escaneo en modo tuner
