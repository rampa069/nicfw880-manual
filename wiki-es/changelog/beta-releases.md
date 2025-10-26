# Registro de Versiones BETA

Historial completo de versiones desde BETA 01 hasta BETA 05G (de más antiguo a más nuevo).

---

## BETA 01 (15 de septiembre)

### IMPORTANTE: Hardware Soportado

**Radios soportadas:**
- Radtel RT-880
- Radtel RT-880G
- iRadio UV-98 Plus (números de serie > 300)

**No soportadas:**
- Radios con número de serie < 300 (puede funcionar seleccionando modelo UV-98 durante flasheo, pero no verificado)
- Modelos antiguos iRadio UV-98 (diferencias de hardware, ya no se fabrican)

### Sistema DTMF Preset

**Tecla predeterminada para abrir menú DTMF:** SP-S2 (configurable)

**Controles del Menú DTMF Preset:**
- Up / Down: Navegar presets
- Red: Salir del menú
- Green / PTT: Seleccionar y comenzar transmisión
- 0–9: Introducir número de preset DTMF
- Long Press Green: Editar nombre de preset

**Categoría Main Menu – DTMF:**
- Deviation: Controla volumen de tonos DTMF
- Digit Time: Duración de transmisión de cada dígito (ms)
- Gap Time: Silencio entre dígitos (ms)
- Start Pause: Retardo antes de que comiencen los tonos (ms)
- Preset: Editar secuencias de dígitos DTMF

**Editar Dígitos DTMF Preset:**
- 0–9: Introducir dígitos 0–9
- Green, Up, Down, Red: Introducir dígitos DTMF A, B, C, D
- *, #: Introducir Estrella (*) y Almohadilla (#)
- PTT: Confirmar entrada
- S1: Retroceso
- S2: Abortar entrada

**Notas:**
- Introducir secuencia en blanco/vacía elimina/libera el slot
- El menú solo se abre si hay al menos un preset válido guardado y TX está permitido

### PTT ID

DTMF Preset #99 se usa para la secuencia PTT ID.

### Extras

- Añadida acción de presión larga para copiar canal seleccionado al VFO
- Aumentada velocidad de escaneo
- Numerosos ajustes y correcciones basados en feedback de ALPHA 19

### Por Hacer

Funciones GPS, APRS y Decodificación DTMF se añadirán en versión futura.

---

## BETA 02 (19-26 de septiembre)

### Decodificación DTMF 🔢

Dígitos DTMF decodificados reemplazan temporalmente el Group Name en pantalla.

**Opciones de decodificación:**
- **Off:** Sin decodificación
- **On:** Activar solo decodificación
- **P-ID:** Emparejar secuencias escuchadas con presets y mostrar sus nombres

**Display For:** Cuánto tiempo (en segundos) se muestran dígitos detectados

**SeqEnd Pause:** Pausa (en segundos) después de dígito detectado, marcando fin de secuencia

### DTMF Preset Speed Dial ⚡

**Nueva función User Key:** "DTMF Speed Dial"

Asignar a una tecla, presión larga transmite preset DTMF correspondiente.

**Ejemplo:** Si LP-2 está configurado como DTMF Speed Dial, mantener 2 transmite preset #2.

### Módulo Sintonizador Si4732 📻

Menú de selección de funciones añadido.

⚠️ **Importante:** Definiciones de teclas para este módulo han cambiado.

**Teclas de Presión Corta:**
- EMG → Alternar visualización Día/Noche
- * / # → Ajustar BFO
- 0–9 → Introducir frecuencia
- Up/Down → Paso de frecuencia VFO / número de canal / dirección de búsqueda
- Green → Abrir Main Menu
- S1 → Cambiar Band
- S2 → Cambiar Modulation
- Red → Alternar modo VFO/Channel

**Teclas de Presión Larga:**
- 1 / 3 → Buscar Abajo/Buscar Arriba
- 2 → Reiniciar BFO a 0
- 4 → Introducir nuevo paso de frecuencia
- 5 → Alternar S-Meter (reduce interferencia)
- 6 → Alternar squelch (solo WFM)
- 7 → Activar/desactivar scope (>18 MHz, dual antennas requeridas)
- 8 → Alternar filtro de línea de potencia
- 9 → Alternar ancho de banda AM
- Red → Salir del modo tuner
- Green → Menú de lista de selección de funciones

### GPS 🛰️

Nueva función User Key: "GPS" añadida.

Actualmente herramienta de diagnóstico que muestra:
- Latitud / Longitud / Altitud
- Conteo de satélites
- Velocidad y rumbo
- Hora

### BETA 02A: Actualización Módulo GPS 🚀

- Modo Compass GPS
- Reloj en Tiempo Real (verificar categoría menú "Time")
- Velocidad mostrada en knots, mph o kph

**Controles útiles de teclas cuando GPS está activo:**
- 🔴 RED: Salir del módulo GPS
- #️⃣ #: Alternar vista raw data ↔ compass mode
- ✴️ *: Cambiar entre cardinal rotation ↔ pointer rotation
- 9️⃣ 9: Ciclar entre knots ↔ mph ↔ kph

### BETA 02B

- Corregido problema de guardado de Settings

### Próximamente 🌌

- Objetivos y seguimiento GPS
- Guardar ubicación actual como objetivo
- Transmitir ubicación a otra radio (via DTMF)
- Blips de objetivo estilo radar

---

## BETA 03 (26 de septiembre)

### Versiones macOS de RMS

Proporcionadas en base "compilar y esperar". Sin soporte directo disponible.

Puede requerir pasos avanzados (eliminar flags de cuarentena, ajustar permisos de archivos).

### Modelos iRadio No Soportados

Modelos antiguos de iRadio no compatibles:
- Pantalla se vuelve blanca (en lugar de negra) durante flasheo de firmware
- Diferencias de hardware en retroiluminación LCD

### Bloqueo PIN 🔒

Asegura dispositivo con PIN.

**Configuración:** Main menu Advanced → PIN

Cuando está activado, una vez bloqueado el teclado, no se puede desbloquear hasta introducir PIN correcto.

### Opciones Wake Screen 🌙

Configura qué despierta la pantalla bajo **Wake LCD On:**
- **Keys Only:** Solo presiones de teclas despiertan pantalla
- **RX:** Señal recibida o presión de tecla despierta pantalla
- **TX:** Transmitir o presión de tecla despierta pantalla
- **All:** Cualquier evento despierta pantalla

### Monitor HT en Modo Sintonizador Si4732 📡

Si Multiwatch está activado, los VFOs no mezclan frecuencias HF y VHF/UHF, y scope está desactivado en modo tuner:
- Cualquier señal recibida en VFOs interrumpe temporalmente el tuner
- Cambia de vuelta a modo HT
- Después del MW Pause configurado, modo Si4732 se reanuda automáticamente

### Opción Reloj 24/12 Horas 🕒

Bajo **Time → Format**, elegir entre visualización 24 horas y 12 horas.

**Nota:** En modo 12 horas, AM/PM reemplaza el día de semana para ahorrar espacio.

### Actualización GPS con Waypoints 🧭

¡Adición mayor de GPS!

**Iniciar GPS:** Sin tecla predeterminada — configurar user key o acceder via menú de función de modo radio (predeterminado: LP-GREEN)

GPS inicia en Data Mode, mostrando datos GPS sin procesar.

**Teclas de Función:**
- SP-GREEN: Abrir main menu
- SP-#: Alternar Data Mode / Tracker Mode
- SP-*: Cambiar modo de rotación de brújula
- SP-7: Abrir selección de waypoints (requiere al menos un waypoint guardado)
- SP-9: Alternar unidades (Imperial, Nautical, Metric)
- SP-RED: Salir del módulo GPS

**Teclas de Presión Larga (LP):**
- LP-GREEN: Menú de funciones GPS
- LP-1: Establecer radio de seguimiento
- LP-4: Establecer objetivo en ubicación actual
- LP-5: Limpiar objetivo

**Gestión de Waypoints:**

Para guardar waypoint:
1. Usar LP-4 para establecer objetivo
2. Abrir main menu (SP-GREEN) → categoría GPS → Point Save
3. Elegir slot no usado, presionar SP-GREEN para guardar

Para renombrar:
- Abrir selección de waypoints (SP-7), navegar al waypoint, presionar LP-GREEN
- Usar entrada de teclado T9

También se pueden gestionar waypoints desde RMS → GPS tab.

**Nota:** RMS usa grados decimales con signo (hasta 5 decimales) para latitud/longitud.

### Actualización BETA 3A

- Corregido desbordamiento negativo de zona horaria
- Añadido menú 'PIN Action' a categoría 'Advanced' (Configurar a 'Startup' para forzar entrada de PIN al encender)
- GPS: Corregido problema de manchas en modo de rotación de brújula fija

### Actualización BETA 3B

- Corrección de altitud GPS GEOID
- Corregido stepping de 8.33 kHz

### Actualización BETA 3C

- Corregido SP-Red para detener búsqueda en modo tuner
- Apagado de altavoz/amplificador después de 10 segundos de inactividad
- Sistema de corrección GEOID de altitud GPS más fino
- Corregida modulación y ancho de banda automáticos para presets de escaneo
- Corregidos errores de comunicación serial (introducidos en 3B)

---

## BETA 04 (28 de septiembre)

### RMS macOS

Disponible desde GitHub: https://github.com/nicsure/nicfw880-rms-builder/releases/tag/BETA04

¡Gracias a Ramon Martinez! 🙏

**BAUD debe estar configurado en 38400 en todo momento.**

### ¿Qué Hay de Nuevo en BETA 04? ✨

- Añadida nueva función User Key: **DTMF Enter** (Transmite secuencia DTMF de un solo uso)
- Lecturas de velocidad actualizadas: "kph" → "km/h"
- Unidades, rotación y rango GPS ahora se guardan en almacenamiento
- Corregido otro problema de manchas en modos de rotación de brújula/puntero GPS
- **Permitir RX/TX rudimentario mientras módulo GPS está activo**
  - Usa cualquier VFO que estaba activo cuando se inició módulo GPS
  - Nota: RX/TX RUDIMENTARIO, sin características extra como Multiwatch
- Nueva opción: Activar/desactivar visualización de reloj (Main Menu → Time → Enable)
- Empaquetado de App RMS macOS soportado
- Integración RMS con OpenStreetMap.org

### Actualización BETA 04A

- Corregido silenciamiento de altavoz en modo tuner Si4732
- **Añadida difusión DTMF de ubicación en módulo GPS**
  - Presionar PTT (si está permitido) luego S2 para transmitir ubicación
  - Radio receptora debe estar en módulo GPS sin waypoint seleccionado
- **Implementada edición de coordenadas de Waypoint en menú GPS Waypoint**
  - LP-1: Editar grados de Latitud
  - LP-2: Editar grados de Longitud
  - LP-4: Cambiar signo de Latitud (alternar positivo/negativo)
  - LP-5: Cambiar signo de Longitud

---

## BETA 04E (4 de octubre)

### ⚠️ APRS Está en ETAPA TEMPRANA

No va a funcionar como sistemas APRS de otras radios... ¡TODAVÍA! Versiones incrementales para pruebas.

### ⚠️ Importante Reinicio de Configuraciones

Esta actualización introduce nuevas configuraciones. Enciende la radio después de flashear con **botón 'EMG' presionado**.

Pantalla debería mostrar "DEFAULT SETTINGS" por un momento antes de arrancar normalmente.

**Espera a que desaparezca el triángulo rojo antes de proceder.**

**Continúa usando versión RMS BETA04 existente.**

### Nuevas Funciones Módulo GPS

**Ubicación GPS Sync cambiada:**
- Anteriormente: Main Menu → Time → GPS Sync
- Ahora: **Main Menu → GPS → Enabled**

**Debe estar ON para que funcionen funciones GPS.**

Si está desactivado, radio usará ubicaciones GPS fijas.

**Baliza APRS con PTT:**
Mientras PTT está presionado, presión corta de **S1** envía baliza de ubicación APRS.

**Waypoint GPS Predeterminado:**
- Waypoint 99 es ubicación predeterminada
- Si GPS desactivado o radio no tiene GPS, este waypoint se carga al inicio como ubicación actual
- Establecer cualquier waypoint como ubicación actual presionando largo RED mientras navegas waypoints

### Envío APRS (Recepción Próximamente)

Funciona en todos los modelos (capacidad GPS no requerida).

**Nuevas configuraciones bajo Main Menu → APRS:**

- **APRS Deviation:** Controla volumen de datos APRS
- **Beacon Time:** Minutos entre transmisiones de balizas de ubicación
- **Beacon Distance (metros):** Envía baliza si ha viajado más allá de esta distancia desde última transmisión
- **Beacon TX:** Envía balizas APRS al inicio/fin de PTT
  - Usa DTMF Start Delay existente para temporización
  - Funciona solo en modo radio normal, no en modo módulo GPS
- **Beacon Comment:** Comentario personalizado (hasta 24 caracteres) con cada baliza
- **Callsign:** Establece tu indicativo
- **Hear Tones:** Normalmente datos APRS no audibles. Activar para diagnóstico

⚠️ **Balizas auto-transmitidas activadas por Beacon Time o Distance limitadas a una por minuto.**

### Actualización BETA 04E (Experimental)

**Soporte decodificación APRS** - MUY básico y rudimentario. Solo muestra popup de info cuando se recibe paquete.

**Recuerda activar MainMenu → APRS → Decode**

También recuerda problema con squelch override. Sin solución aún.

**Corregidos problemas de bloqueo de radio.**

---

## BETA 04F (13 de octubre)

**IMPORTANTE:** Realizar reinicio de configuraciones antes de usar.
- Mantener EMG mientras se enciende
- Esperar a que desaparezca triángulo rojo después de encender

**Usar RMS BETA 04**

**Nota:** Mucho trabajo y nuevo código. Casi seguro habrá algunos problemas, no esperes 100% de inmediato.

### Sistema de Balizas MIC-E

Configurar via → APRS Menu

- **SSID:** 0-7 (Establece ID de estación secundaria)
- **Decode:** On/Off/Popup (Activa decodificación de paquetes APRS MIC-E recibidos)
- **Popup Time:** 0.1-9.9 segundos (Tiempo que popup APRS permanece en pantalla)
- **Symbol:** Código ASCII (Símbolo MIC-E Blip para paquetes transmitidos)
- **Status:** 0-7 (Campo de mensaje ABC MIC-E)
- **Digipeater Path:** Off, WIDE1-1, WIDE2-2
- **Ambiguity:** 20 m, 200 m, 2 km (Precisión de ubicación de baliza transmitida)

**Nota:** 20m es mejor precisión para MIC-E (1/100 de minuto ≈ 18m, redondeado para legibilidad).

### Lista de Balizas

En módulo GPS, **SP 6** abre menú de lista "Heard Beacons" (si al menos una escuchada).

**Nota:** Balizas escuchadas no se retienen en almacenamiento.

**Controles:**
- UP/DOWN: Navegar balizas
- RED: Salir del menú de lista de balizas
- GREEN: Establecer baliza como objetivo actual

**Para guardar baliza en waypoints:** Establecer como objetivo actual, luego Main Menu → GPS → Save

### Virtual TTNC (Modo KISS)

Modo Transceptor y Controlador de Nodo Terminal (TTNC) implementado. TNC virtual opera como TNC físico en modo KISS. Datos KISS seriales transmitidos sobre cable de programación regular a 38400 baudios.

Configurar via → APRS Menu

- **KISS Mode:** Activar TTNC virtual
- **Persist:** 1 - 255 (Probabilidad X en 255 de que paquete en cola se envíe en frecuencia libre)
- **Slot Time:** 0-200 milisegundos (Tiempo de retardo si falla verificación probabilidad Persist)

### Audio Boost

Nuevo menú: **Advanced → Audio Boost**

Incrementalmente aumenta ganancia de audio del chip de radio para radios con salida de audio amplificada baja.

---

## BETA 05D (15 de octubre)

**Por favor revisa notas de versión anteriores ya que los ítems no se repiten aquí.**

### Nuevos Iconos

Dos nuevos iconos para APRS y GPS. Skins personalizadas necesitan ajuste de posición de iconos. Skins en extras.zip actualizadas.

**Icono GPS:**
- Antena apuntando abajo: GPS activado, sin bloqueo GPS
- Antena apuntando arriba: GPS activado y bloqueado

**Icono APRS:**
- ■ APRS: Decodificación APRS activada
- ■ APRSX: Balizas automáticas APRS activas

### Adiciones APRS

**Popup/navegador de balizas muestra distancia y rumbo.**

**Digipeater AX.25:**
Path añadido. Usar "AX.25" en Main Menu→APRS→Digipeater Path

Indicativo digipeater predeterminado "ARISS", editable en Main Menu→APRS→AX.25 Digipeater

**Selección VFO para APRS:**
Main Menu→APRS→Use VFO

Seleccionar VFO específico para operación automática de balizas APRS. VFO seleccionado muestra icono APRS. Todas balizas automáticas enviadas via este VFO.

VFO silenciado si Main Menu→APRS→Hear Tones configurado en Off (icono silencio mostrado).

**Nota:** Balizas manuales y balizas PTT siempre enviadas en VFO activo.

### Actualización BETA 05A

- Corrige menú AX.25 Digipeater no guardando cambios

### Actualización BETA 05B

- Corrige error de cálculo de minutos en balizas recibidas
- Silencia micrófono durante pausa inicial al enviar balizas APRS

### Actualización BETA 05C

- Corrige ráfaga de audio corta después de baliza recibida cuando VFO asignado a APRS y silenciado
- Corrección para botones laterales dejando de funcionar cuando squelch abierto mientras decodificación APRS activa
  - Requiere Main Menu → APRS → Use VFO configurado en A, B o C
  - No usar squelch override en VFO configurado para APRS

### Actualización BETA 05D

- Squelch override no se puede activar en VFO asignado a APRS si Hear Tones configurado en off
- Cambiar VFOs ahora cancela estado de squelch override (previene transferir a VFO APRS y bloquear botones laterales)
- Cuando squelch override activo, barra de señal muestra 'OV' en lugar de 'RX'

---

## BETA 05E (≈20 de octubre)

**Nota:** Por favor lee notas de versión anteriores si no lo has hecho, los ítems no se repiten.

### Añadida Pestaña Remote

**Importante:** TANTO firmware 05E como RMS 05E requeridos para esta característica.

**Comportamiento pestaña Remote:**
- Cuando conexión Remote activa, no se pueden seleccionar otras pestañas RMS
- Al inicio visualización Remote no se actualiza automáticamente. Para forzar actualización, abrir y cerrar menú (o activar redibujado de otra forma)

### ADVERTENCIA

Energía RF en proximidad cercana al cable de programación USB puede freír chip UART y hacer que falle, cortando enlace.

No publiques reportes como "deja de funcionar cuando presiono PTT."

### Mapeo de Teclas (Control Remoto)

- 0–9 → 0–9
- . / * → *
- Tab / # → #
- Enter → Green
- Escape / Backspace → Red
- Up / PageUp → UP
- Down / PageDown → DOWN
- Rueda del Ratón → UP & DOWN
- F1 → S1
- F2 → S2
- F3 → EMG
- Espacio → PTT

### Aún Por Hacer

- Añadir más formatos de decodificación APRS
- Clonación GDO 433

---

## BETA 05F / 05G (≈25 de octubre)

### ¿Qué Hay de Nuevo en 05F?

**Etiquetas de Botones Remotos (T9 y otros):**
Añadidas etiquetas T9 a botones remotos en RMS para mejor usabilidad.

**Soporte VFO Mixto en Multiwatch:**
Anteriormente, mezclar VFOs HF y no-HF no permitido (ruido de conmutación rápida de relé y desgaste).

Ahora relé de conmutación de banda HF suprimido durante verificaciones Multiwatch. VFO activo dominante para estado de relé. Se pueden usar VFOs mixtos; VFOs que requieren activar relé se omiten durante verificaciones.

**Actualizaciones APRS:**
- Decodificación de baliza RAW GPS (NMEA) implementada
- Decodificación de baliza APRS estándar implementada
- Decodificación de baliza APRS comprimida implementada
- Corregido: Recepción sin silenciar durante popups APRS cuando Hear Tones activado

**Mejoras Spectrum Scope:**
- Tiene su propio menú de funciones (LP-Green)
- Trigger de monitoreo de señal añadido (LP 0-9 para establecer nivel de trigger, LP-0 = Deshabilitar)
- Línea azul muestra nivel de trigger
- Añadidas funciones FM, AM, DSB a teclas del scope
  - LP S1 = FM
  - LP S2 = AM
  - LP EMG = DSB
- También seleccionable via menú de funciones
- Main Menu ahora se puede acceder durante operación Scope

**Escaneo en modo tuner:**
- Escaneo no iniciará hasta que usuario suelte tecla LP (LP1 o LP3)
- Escaneo pausado mientras tecla presionada (ayuda evitar desbordamientos al detener escaneos)
- Velocidad de escaneo mejorada

### Actualización BETA 05G

- Ignorar/excluir frecuencia en modo monitor de spectrum scope (presionar # mientras monitorea para excluir)
- Corregido problema de configuraciones de scope reiniciándose después de cerrar menús
- Salir de scope durante monitoreo y permanecer en frecuencia monitoreada presionando PTT
- Añadida función de tecla "Clear Ignores" al scope
- Corregido cambios de modulación en scope "persistiendo" después de salir del scope
- Cálculo de distancia GPS ahora corrige por latitud (líneas de longitud se "comprimen" al acercarse a los polos)
- Previniendo inicio de scope cuando en modos basados en canales
- Eliminado "Beacon TX" para prevenir confusión

**Nota:** Continuar usando RMS 05F con esta actualización.

---

**Fin de Versiones BETA (hasta BETA 05G)**

Para información sobre características específicas, ver sección [Guías de Usuario](../guides/).
