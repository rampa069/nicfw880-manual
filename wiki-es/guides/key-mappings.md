# Guía de Mapeo de Teclas y Controles

## Descripción General

Esta guía consolida todos los mapeos de teclas a través de diferentes modos en nicFW880. Las funciones de teclas han evolucionado a través de versiones, así que se proveen los mapeos más recientes.

**Nota:** Algunas teclas son configurables vía funciones User Key. Se listan las asignaciones predeterminadas.

## Modo Radio Normal

### Teclas de Presión Corta (SP)

- **0–9:** Introducir frecuencia/número de canal
- **\*:** Varias funciones (dependiente de modo)
- **#:** Varias funciones (dependiente de modo)
- **UP / DOWN:** Cambiar frecuencia, navegar menús
- **GREEN:** Confirmar, Abrir Main Menu
- **RED:** Cancelar, Atrás
- **S1:** Botón lateral 1 (configurable)
- **S2:** Botón lateral 2 (configurable)
- **EMG:** Botón Emergency/Función - Alternar modo Día/Noche (ALPHA 13+)
- **PTT:** Presionar para hablar

### Teclas de Presión Larga (LP)

**Funciones User Key Predeterminadas:**

- **LP-1:** Scan Presets (ALPHA 19+) - configurable
- **LP-2:** Spectrum Scope (ALPHA 18a+) - configurable
- **LP-7:** Frequency Counter (ALPHA 13+)
- **LP-8:** Si4732 Tuner Module (ALPHA 16+) - reasignable
- **LP-GREEN:** Function Menu (ALPHA 15+)
- **LP-EMG:** Crossband Repeater (ALPHA 13)

**Otras Funciones de Presión Larga:**
- **LP-RED:** Configurar waypoint como ubicación actual (al explorar waypoints, BETA 04E+)

## Modo Módulo GPS

### Presión Corta (SP) en GPS

- **SP-GREEN:** Abrir main menu
- **SP-#:** Alternar Data Mode / Tracker Mode
- **SP-\*:** Cambiar modo rotación de brújula
- **SP-6:** Abrir lista "Heard Beacons" (APRS, BETA 04F+)
- **SP-7:** Abrir selección de waypoint
- **SP-9:** Alternar unidades (Imperial, Nautical, Metric)
- **SP-RED:** Salir de módulo GPS

### Presión Larga (LP) en GPS

- **LP-GREEN:** GPS function menu
- **LP-1:** Configurar radio de rastreo / Editar grados Latitude (en menú waypoint, BETA 04A+)
- **LP-2:** Editar grados Longitude (en menú waypoint, BETA 04A+)
- **LP-4:** Configurar objetivo a ubicación actual / Cambiar signo Latitude (BETA 04A+)
- **LP-5:** Limpiar objetivo / Cambiar signo Longitude (BETA 04A+)

### PTT en GPS (BETA 04A+)

- **PTT + S2:** Transmitir ubicación GPS vía DTMF

## Módulo Sintonizador Si4732

### Presión Corta (SP) en Tuner (BETA 02+)

- **SP-EMG:** Alternar visualización Día/Noche
- **SP-\* / #:** Ajustar BFO
- **SP-0–9:** Introducir frecuencia (VFO) o número de canal (modo Channel)
- **SP-Up/Down:** Paso frecuencia VFO / número de canal / dirección de búsqueda
- **SP-Green:** Abrir Main Menu
- **SP-S1:** Cambiar Band
- **SP-S2:** Cambiar Modulation
- **SP-Red:** Alternar modo VFO/Channel
- **SP-\*:** Buscar hacia atrás (solo VFO)
- **SP-#:** Buscar hacia adelante (solo VFO)

### Presión Larga (LP) en Tuner (BETA 02+)

- **LP-1 / 3:** Seek Down / Seek Up
- **LP-2:** Reiniciar BFO a 0
- **LP-4:** Introducir nuevo paso de frecuencia
- **LP-5:** Alternar S-Meter (reduce interferencia)
- **LP-6:** Alternar squelch (solo WFM)
- **LP-7:** Activar/desactivar scope (>18 MHz, requiere antenas duales)
- **LP-8:** Alternar filtro de línea de potencia
- **LP-9:** Alternar ancho de banda AM (6/4/3/2/1 kHz)
- **LP-Red:** Salir de modo tuner
- **LP-Green:** Menú de selección de lista de funciones

## Modo Spectrum Scope

### Presión Corta (SP) en Scope

- **SP-0 / SP-9:** Introducir nueva frecuencia central
- **SP-RED:** Salir de modo monitor / Salir del scope
- **SP-#:** Centrar scope en señal más fuerte / Excluir frecuencia (en modo monitor, BETA 05G+)
- **SP-Up / SP-Down:** Desplazar frecuencia central por paso actual
- **SP-S1:** Monitorear frecuencia central
- **SP-S2:** Monitorear frecuencia de señal más fuerte
- **SP-GREEN:** Abrir Main Menu (BETA 05F+)
- **PTT:** Salir de scope y permanecer en frecuencia monitoreada (BETA 05G+)

### Presión Larga (LP) en Scope (BETA 05F+)

- **LP-GREEN:** Abrir scope function menu
- **LP-0 to 9:** Configurar nivel disparador de monitor (LP-0 = Disable)
- **LP-#:** Alternar ancho de scope (15/30/60/120 barras)
- **LP-\*:** Introducir nuevo paso de frecuencia
- **LP-S1:** Modulación FM
- **LP-S2:** Modulación AM
- **LP-EMG:** Modulación DSB

## Menú DTMF Preset

### En Menú DTMF Preset (BETA 01+)

**Apertura:** SP-S2 (predeterminado, configurable)

- **Up / Down:** Explorar presets
- **0–9:** Saltar a número de preset
- **Red:** Salir de menú
- **Green / PTT:** Seleccionar y comenzar transmisión
- **Long Press Green:** Editar nombre de DTMF preset

### Editando Dígitos DTMF

- **0–9:** Introducir dígitos 0–9
- **Green:** Introducir dígito DTMF A
- **Up:** Introducir dígito DTMF B
- **Down:** Introducir dígito DTMF C
- **Red:** Introducir dígito DTMF D
- **\*, #:** Introducir Star (*) y Hash (#)
- **PTT:** Confirmar entrada
- **S1:** Backspace
- **S2:** Abortar entrada

## Menú Scan Preset (ALPHA 19+)

**Apertura:** LP-1 (predeterminado, configurable)

- **Up / Down:** Explorar presets
- **0–9:** Saltar a número de preset
- **Green:** Iniciar escaneo
- **Long-press Green (LP-Green):** Editar nombre de preset

## Modo Remote Control (RMS, BETA 05E+)

Cuando se usa tab Remote de RMS, teclado/ratón controlan la radio:

- **0–9** → 0–9
- **.** o **\*** → \*
- **Tab** o **#** → #
- **Enter** → Green
- **Escape** o **Backspace** → Red
- **Up** o **PageUp** → UP
- **Down** o **PageDown** → DOWN
- **Mouse Wheel** → UP & DOWN
- **F1** → S1
- **F2** → S2
- **F3** → EMG
- **Space** → PTT

## Modo Crossband Repeater (ALPHA 13)

**Activación:** Long-press EMG

### Mientras Está Ejecutándose:

- **RED:** Salir de modo XB Repeater
- **STAR (\*):** Alternar pantalla encendida/apagada

## Funciones APRS

### Baliza APRS Manual (BETA 04E+)

- **PTT + S1:** Enviar baliza de ubicación APRS (mientras PTT está presionado)

### Lista de Balizas APRS (BETA 04F+)

**En módulo GPS, SP-6 abre lista de balizas**

- **UP/DOWN:** Explorar balizas
- **RED:** Salir de lista
- **GREEN:** Configurar baliza como objetivo

## Function Menu (ALPHA 15+)

**Apertura:** LP-GREEN (predeterminado)

Explorar y seleccionar cualquier función de usuario para activarla.

Navegación:
- **Up / Down:** Explorar funciones
- **Green:** Activar función seleccionada
- **Red:** Salir de menú

## Funciones Especiales

### Copiar Channel a VFO (BETA 01+)

**En modo channel:** Long-press para copiar canal seleccionado a VFO

### Squelch Override

Cuando está activo, barra de señal muestra **'OV'** en lugar de 'RX' (BETA 05D+)

Cambiar VFOs cancela squelch override (BETA 05D+)

### Reset de Configuraciones

**Mantener EMG mientras se enciende:**
- Realiza reset de configuraciones
- Muestra mensaje "DEFAULT SETTINGS"
- Esperar a que desaparezca triángulo rojo

### Brillo de Pantalla

**Short-press EMG:** Alternar modo Día/Noche (ALPHA 13+)

Modos Día y Noche tienen brillo ajustable individualmente.

## Asignación User Key

Muchas funciones long-press pueden ser reasignadas vía el sistema de menú:

**Funciones Asignables:**
- Scan Presets
- Spectrum Scope
- DTMF Preset Menu
- DTMF Speed Dial
- DTMF Enter
- GPS Module
- Si4732 Tuner
- Frequency Counter
- Varias otras funciones

**Configuración:** Verificar Main Menu → User Keys (o similar, ruta exacta puede variar)

## Consejos para Uso de Teclas

### Aprendiendo las Teclas

1. **Comenzar con básicos:**
   - Short press: Acciones inmediatas
   - Long press: Funciones secundarias, menús

2. **Específico de modo:**
   - Las teclas cambian función según modo
   - GPS, Tuner, Scope tienen sus propios mapeos

3. **Usar Function Menu:**
   - LP-GREEN abre function menu
   - Explorar todas las funciones disponibles
   - No es necesario recordar cada tecla

### Personalización

- Reasignar user keys para coincidir con tu flujo de trabajo
- Funciones más usadas en teclas fáciles de alcanzar
- Documentar tus asignaciones personalizadas

## Tarjeta de Referencia Rápida

Para un listado condensado de todos los atajos, ver [Referencia Atajos de Teclado](../reference/key-shortcuts.md).

## Historial de Versiones

Los mapeos de teclas han evolucionado significativamente a través de versiones. Esta guía refleja los mapeos más recientes (BETA 05G). Para información específica de versión, ver el [Changelog](../changelog/).
