# Guía del Sistema APRS

## Descripción General

La funcionalidad APRS (Automatic Packet Reporting System) se introdujo en BETA 04E y ha sido mejorada continuamente hasta BETA 07. APRS permite enviar y recibir balizas de ubicación y otros datos de paquetes.

**Primera introducción:** BETA 04E
**Últimas actualizaciones:** v5.09.02 (temporización de balizas, RX override)

⚠️ **Importante:** APRS está en desarrollo continuo. Las características se añaden de forma incremental.

## Características Soportadas

### Decodificación de Balizas (BETA 05F+)
- Decodificación de balizas RAW GPS (NMEA)
- Decodificación de balizas APRS estándar
- Decodificación de balizas APRS comprimidas
- Decodificación de balizas MIC-E (BETA 04F+)
- Desempaquetado de paquetes APRS-IS (BETA 06B)
- Decodificación de paquetes meteorológicos (BETA 06B)

### Transmisión de Balizas
- Balizas manuales (PTT + S1, o SP-1 durante TX en BETA 06+)
- Balizas automáticas (basadas en tiempo o distancia)
- Balizas PTT (inicio/fin de transmisión)

### Navegador de Balizas Escuchadas (BETA 06B+)
- Acceso a balizas APRS recibidas desde modo radio (función de usuario)
- Ver datos meteorológicos de paquetes meteorológicos recibidos
- Navegar información meteorológica decodificada

## Configuración

### Main Menu → APRS

#### Callsign
Configura tu indicativo de radioaficionado.

#### SSID: 0-7
Configura el identificador secundario de estación.

#### Decode: On/Off/Popup
- **Off:** Sin decodificación APRS
- **On:** Decodificar pero no mostrar popup
- **Popup:** Mostrar balizas recibidas como popup

#### Popup Time: 0.1-9.9 segundos
Duración del popup APRS en pantalla.

#### Symbol: Código ASCII
Símbolo MIC-E Blip para paquetes transmitidos.

#### Status: 0-7
Campo de mensaje ABC MIC-E (estado).

#### Beacon Comment
Añade un comentario personalizado (hasta 24 caracteres) con cada baliza.

#### Beacon Time (v5.09.02+: segundos)
Tiempo entre transmisiones automáticas de balizas de ubicación.

**Cambio v5.09.02:** Esta configuración ahora está en **segundos** en lugar de minutos.
- ⚠️ **ADVERTENCIA:** La configuración existente NO se convierte automáticamente
- Si tu configuración anterior era 2 (minutos), ahora será 2 segundos
- Debes corregir manualmente esta configuración después de actualizar
- Intervalo mínimo: 10 segundos

#### Beacon RX OV (Beacon RX Override) (v5.09.02+)
Permite que las balizas programadas interrumpan RX.

#### Beacon Distance (metros)
Envía una baliza si la radio se ha desplazado más allá de esta distancia desde la última transmisión.

#### APRS Deviation
Controla el volumen de los datos APRS. Los valores predeterminados suelen estar bien, pero se pueden ajustar para tu radio específica.

#### Hear Tones: On/Off
Normalmente los datos APRS no son audibles. Activa esto para escucharlos con fines de diagnóstico.

**Corregido en 05F:** Recepción sin silenciar durante popups APRS cuando Hear Tones está activado.

#### Filter (BETA 06A+)
Filtro AF para usar específicamente cuando se recibe una señal en el VFO asignado a APRS.

**Propósito:** Permite filtrado de audio específicamente para recepción APRS para mejorar la fiabilidad de decodificación.

**Ruta:** Main Menu → APRS → Filter

### Configuración de Digipeater

#### Digipeater Path
Opciones: **Off**, **WIDE1-1**, **WIDE2-2**, **AX.25**

Al usar "AX.25":
- El indicativo predeterminado del digipeater es "ARISS"
- Se puede editar en: Main Menu → APRS → AX.25 Digipeater

#### Ambiguity: 20 m, 200 m, 2 km
Precisión de la ubicación de baliza transmitida.

**Nota:** 20m es la mejor precisión para MIC-E, que tiene una resolución de 1/100 de minuto (aproximadamente 18m).

### Habilitación APRS y Selección de VFO (BETA 07+)

**Ruta:** Main Menu → APRS → Enabled (anteriormente "Use VFO" en BETA 05D-06B)

Configura cómo opera APRS:

**Opciones:**
- **Off:** Todas las funciones APRS deshabilitadas
- **VFO-A / VFO-B / VFO-C:** Asigna VFO específico para APRS (**recomendado**)
  - Habilita Silenciamiento VFO, Filtrado y compatibilidad Botones Laterales
  - No afecta balizas manuales o balizas estilo PTT-ID
  - El VFO seleccionado mostrará un icono APRS
  - Todas las balizas automáticas se envían vía este VFO
  - Este VFO se silenciará si "Hear Tones" está configurado en Off (se muestra icono de silencio)
- **Active VFO:** APRS usa el VFO actualmente activo
  - Deshabilita botones laterales y botón EMG
  - No aplica filtrado
  - No silencia los sonidos APRS que se reciben

⚠️ **Importante:**
- Las balizas manuales y balizas PTT siempre se envían en el VFO activo
- No usar squelch override en el VFO configurado para APRS (BETA 05C+)
- Squelch override no se puede activar en VFO asignado a APRS si Hear Tones está desactivado (BETA 05D)
- Si la decodificación APRS está deshabilitada pero se asigna un VFO APRS, ese VFO será excluido del multiwatch (BETA 06B)

## Iconos APRS

### Icono GPS (BETA 05D+)
- **Antena apuntando hacia abajo:** Funcionalidad GPS activada, pero sin bloqueo GPS
- **Antena apuntando hacia arriba:** GPS activado y bloqueado

### Icono APRS (BETA 05D+)
- **■ APRS:** Decodificación APRS activada
- **■ APRSX:** Balizas automáticas APRS activas

## Lista de Balizas (BETA 04F+)

### Mejoras del Historial de Balizas (v5.09.01+)

**Capacidad:** Aumentada de 30 a **50 balizas**

**Ordenamiento basado en cola:** El historial de balizas ahora funciona como una cola en lugar de una lista rotativa:
- La última baliza recibida siempre se coloca en la posición #1
- Todas las demás balizas se desplazan hacia arriba en la lista

**Almacenamiento persistente:** El historial de balizas ahora se guarda en almacenamiento flash. Las balizas recibidas persistirán después de apagar.

**Integración RMS (v5.09.02+):** Las balizas ahora pueden ser leídas por el RMS y copiadas a Waypoints.

**Etiquetas de botones (v5.09.02+):** Ahora se muestran etiquetas de recordatorio de botones en el navegador de balizas.

### Acceso a Balizas Escuchadas

**Módulo GPS (BETA 04F+):**
En el módulo GPS, **SP-6** abre el menú de lista "Heard Beacons" (requiere al menos una baliza escuchada).

**Modo Radio (BETA 06+):**
Navegador de Balizas Escuchadas ahora accesible desde modo radio vía función de usuario.

### Controles:
- **UP/DOWN:** Navegar por balizas
- **RED:** Salir del menú de lista de balizas
- **GREEN:** Establecer baliza como objetivo actual

### Visualización de Balizas (BETA 05D+)
El popup/navegador de balizas ahora muestra:
- Distancia a la baliza
- Rumbo a la baliza

### Paquetes Meteorológicos (BETA 06+)

**Decodificación de Paquetes Meteorológicos:**
La radio ahora decodifica paquetes meteorológicos APRS y muestra datos meteorológicos.

**Características:**
- Popup meteorológico muestra información meteorológica decodificada
- Función de usuario disponible para recuperar datos meteorológicos
- Se integra con el Navegador de Balizas Escuchadas

**Acceso a Datos Meteorológicos:**
Use la función de usuario para recuperar datos meteorológicos de paquetes meteorológicos recibidos.

### Guardar Balizas
Para guardar una baliza en waypoints:
1. Usa el menú de lista de balizas para establecerla como objetivo actual (GREEN)
2. Main Menu → GPS → Save

## Baliza APRS Manual

### Baliza PTT (BETA 04E+)
Mientras PTT está presionado, presiona brevemente **S1** para enviar una baliza de ubicación APRS.

**Requisitos:**
- Funciona solo en modo radio regular (no en modo módulo GPS)
- Usa DTMF Start Delay para temporización

### Baliza Manual en Modo Radio (BETA 06+)
Ahora puedes enviar balizas manuales directamente desde modo radio regular sin entrar en modo GPS.

**Método 1:** Presiona **SP-1** durante TX para enviar una baliza
**Método 2:** Método tradicional PTT + S1 (como arriba)

**Nota:** Ya no es necesario cambiar a modo GPS para transmisión manual de balizas.

**Requisitos:**
- Solo funciona en modo radio normal (no en módulo GPS)
- Usa DTMF Start Delay para temporización

## Virtual TTNC (Modo KISS) (BETA 04F+)

Se ha implementado el modo Transceptor y Controlador de Nodo Terminal (TTNC). El TNC virtual opera como un TNC físico en modo KISS.

Los datos KISS seriales se transmiten a través del cable de programación regular a **38400 baudios**.

### Configuración
**Ruta:** Main Menu → APRS

#### KISS Mode
Activar TTNC virtual

#### Persist: 1 - 255
Probabilidad X de 255 de que un paquete en cola se envíe en una frecuencia libre.

#### Slot Time: 0-200 milisegundos
Tiempo de retardo si falla la verificación de probabilidad Persist.

## Solución de Problemas

### Los Botones Laterales Dejan de Funcionar (BETA 05C)
**Causa:** El squelch está abierto mientras la decodificación APRS está activa, o modo Active VFO está seleccionado (BETA 07+).

**Solución:**
- Requiere Main Menu → APRS → Enabled configurado en VFO-A, VFO-B, o VFO-C (no Active VFO)
- No usar squelch override en el VFO configurado para APRS

**Protección adicional (BETA 05D):**
- Cambiar VFOs ahora cancela el estado de squelch override
- Squelch override no se puede activar en VFO asignado a APRS si Hear Tones está desactivado

### Indicador de Squelch Override (BETA 05D+)
Cuando squelch override está activo, la barra de señal muestra **'OV'** en lugar de 'RX'.

## Compatibilidad de Hardware

El envío APRS funciona en todos los modelos: no se requiere capacidad GPS para transmitir balizas APRS.

Para balizas basadas en GPS, consulta la [Guía de GPS](gps.md).

## Historial de Versiones

- **BETA 04E:** Implementación inicial de APRS (solo envío, decodificación básica)
- **BETA 04F:** Sistema de Balizas MIC-E, Lista de Balizas, Virtual TTNC (Modo KISS)
- **BETA 05D:** Iconos APRS/GPS, selección de VFO, Digipeater AX.25, visualización de distancia/rumbo
- **BETA 05F:** Decodificación de balizas RAW GPS, Estándar y Comprimidas
- **BETA 05G:** Eliminada opción "Beacon TX" (causaba confusión)
- **v5.09.01:** Capacidad de historial de balizas aumentada a 50, ordenamiento basado en cola, almacenamiento persistente, mejora del comportamiento Multi-PTT APRS
- **v5.09.02:** Beacon Time ahora en segundos (mínimo 10s), configuración Beacon RX Override, etiquetas de botones del navegador de balizas, lectura de balizas por RMS
