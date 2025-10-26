# Guía de GPS y Navegación

## Descripción General

La funcionalidad GPS se introdujo en BETA 02 y se expandió significativamente en BETA 03 con waypoints y funciones de seguimiento.

**Primera introducción:** BETA 02
**Actualización mayor:** BETA 03 (Waypoints y Seguimiento)
**Últimas actualizaciones:** BETA 04A, 05F/05G

## Activación

**Tecla predeterminada:** LP-GREEN (configurable mediante user keys o menú de función de modo radio)

El GPS inicia en **Data Mode**, mostrando datos GPS sin procesar a medida que se reciben.

## Modos de Visualización

### Data Mode
Muestra datos GPS sin procesar:
- Latitud / Longitud / Altitud
- Conteo de satélites
- Velocidad y rumbo
- Hora

### Modo Tracker/Compass
- Visualización de brújula
- Navegación por waypoints
- Distancia y rumbo al objetivo
- Iconos GPS mostrando estado de bloqueo

## Controles de Teclas

### Funciones de Presión Corta (SP)

- **SP-GREEN:** Abrir main menu
- **SP-#:** Alternar Data Mode ↔ Tracker Mode
- **SP-\*:** Cambiar modo de rotación de brújula
- **SP-6:** Abrir lista "Heard Beacons" (balizas APRS, BETA 04F+)
- **SP-7:** Abrir selección de waypoints (requiere al menos un waypoint guardado)
- **SP-9:** Alternar unidades (Imperial, Nautical, Metric)
- **SP-RED:** Salir del módulo GPS

### Funciones de Presión Larga (LP)

- **LP-GREEN:** Menú de funciones GPS
- **LP-1:** Establecer radio de seguimiento (BETA 03+)
  - Editar grados de Latitud (en menú Waypoint, BETA 04A+)
- **LP-2:** Editar grados de Longitud (en menú Waypoint, BETA 04A+)
- **LP-4:** Establecer objetivo en ubicación actual (BETA 03+)
  - Cambiar signo de Latitud en menú Waypoint (BETA 04A+)
- **LP-5:** Limpiar objetivo (BETA 03+)
  - Cambiar signo de Longitud en menú Waypoint (BETA 04A+)

## Configuración GPS

### Main Menu → GPS

#### Enabled
**Ruta:** Main Menu → GPS → Enabled

**Anteriormente:** Main Menu → Time → GPS Sync (movido en BETA 04E)

**Debe estar ON para que funcionen las funciones GPS.**

Si está desactivado, la radio usará ubicaciones GPS fijas (Default GPS Waypoint).

#### Default GPS Waypoint (BETA 04E+)

**Waypoint 99** es la ubicación predeterminada.

- Si GPS está desactivado o la radio no tiene GPS, este waypoint se carga al inicio como ubicación actual
- Puedes establecer cualquier waypoint como ubicación actual presionando largamente **RED** mientras navegas waypoints

## Gestión de Waypoints

### Guardar un Waypoint

**Método 1: Desde el Módulo GPS**
1. Navega a la ubicación deseada o usa LP-4 para establecer objetivo en ubicación actual
2. Presiona SP-GREEN para abrir main menu
3. Navega a categoría GPS → Point Save
4. Elige un slot no usado (1-99, excepto 99 que es predeterminado)
5. Presiona SP-GREEN para guardar

**Método 2: Desde RMS**
- Usa RMS → GPS tab
- RMS usa grados decimales con signo (hasta 5 decimales) para latitud/longitud

### Renombrar Waypoints

**En la Radio:**
1. Abre selección de waypoints (SP-7)
2. Navega al waypoint deseado
3. Presiona LP-GREEN
4. Usa entrada de teclado T9 para introducir el nombre

**En RMS:**
- Edita directamente en el GPS tab

### Editar Coordenadas de Waypoints (BETA 04A+)

Mientras el menú Waypoint está abierto y el Waypoint requerido se muestra:
- **LP-1:** Editar grados de Latitud
- **LP-2:** Editar grados de Longitud
- **LP-4:** Cambiar signo de Latitud (alternar positivo/negativo)
- **LP-5:** Cambiar signo de Longitud

### Guardar Balizas APRS como Waypoints (BETA 04F+)

1. En módulo GPS, presiona SP-6 para abrir lista "Heard Beacons"
2. Usa UP/DOWN para navegar balizas
3. Presiona GREEN para establecer baliza como objetivo actual
4. Abre main menu (SP-GREEN) → GPS → Save
5. Elige slot y guarda

⚠️ **Nota:** Las balizas escuchadas no se retienen en almacenamiento hasta que se guardan como waypoints.

## Iconos GPS (BETA 05D+)

### Icono de Estado GPS
- **Antena apuntando hacia abajo:** Funcionalidad GPS activada, pero sin bloqueo GPS adquirido
- **Antena apuntando hacia arriba:** GPS activado y bloqueado

## Unidades de Visualización

Presiona **SP-9** para alternar entre:
- **Imperial** (millas, mph)
- **Nautical** (millas náuticas, nudos)
- **Metric** (kilómetros, km/h)

La configuración de unidades se guarda en almacenamiento (BETA 04+).

## Modos de Brújula

Presiona **SP-\*** para cambiar entre:
- **Cardinal rotation:** La brújula rota, el puntero permanece fijo
- **Pointer rotation:** La brújula permanece fija, el puntero rota

El modo de rotación se guarda en almacenamiento (BETA 04+).

## Reloj en Tiempo Real (BETA 02A+)

El GPS proporciona sincronización horaria.

Consulta la categoría **Main Menu → Time** para configuración del reloj.

### Opciones de Visualización de Hora
- Formato de 24 horas o 12 horas (BETA 03+)
- Activar/desactivar visualización del reloj (BETA 04+)

**Nota:** En modo de 12 horas, AM/PM reemplaza el día de la semana para ahorrar espacio.

## RX/TX Rudimentario en Módulo GPS (BETA 04+)

Ahora puedes usar RX/TX básico mientras el módulo GPS está activo.

**Limitaciones:**
- Usa el VFO que estaba activo cuando se inició el módulo GPS
- Solo RX/TX RUDIMENTARIO
- Sin características adicionales como Multiwatch funcionando

## Difusión de Ubicación DTMF (BETA 04A+)

Transmite tu ubicación GPS vía DTMF a otra radio.

1. En módulo GPS, presiona PTT (si PTT está permitido)
2. Presiona **S2** para transmitir ubicación

**Requisitos de la radio receptora:**
- Debe estar en módulo GPS
- No debe tener ningún waypoint seleccionado

## Requisitos de Hardware

Las funciones GPS requieren modelos con capacidad GPS:
- Radtel RT-880G (con GPS)

Los modelos sin GPS aún pueden:
- Usar APRS (ver [Guía APRS](aprs.md))
- Usar waypoints fijos (Waypoint 99 predeterminado)

## Solución de Problemas

### GPS No Funciona
- Asegúrate de que Main Menu → GPS → Enabled esté configurado en ON
- Verifica el estado del icono GPS (antena arriba = bloqueado, antena abajo = sin bloqueo)
- Puede requerir vista despejada del cielo para adquisición de satélites

### Problemas de Manchas (Corregido en BETA 3A)
Problema de manchas corregido en modo de rotación de brújula fija.

## Historial de Versiones

- **BETA 02:** Implementación inicial de GPS (herramienta de diagnóstico)
- **BETA 02A:** Modo Compass GPS, Reloj en Tiempo Real, selección de unidades
- **BETA 03:** Actualización mayor - Waypoints, Seguimiento, navegación completa
- **BETA 04:** Integración GPS/VFO, RX/TX en modo GPS, guardado de rango
- **BETA 04A:** Difusión de ubicación DTMF, edición de coordenadas de waypoints
- **BETA 04E:** GPS Sync movido al menú GPS, sistema Default Waypoint
- **BETA 04F:** Integración con Lista de Balizas APRS
- **BETA 05D:** Indicadores de estado de icono GPS
- **BETA 05G:** Cálculo de distancia mejorado con corrección de latitud
