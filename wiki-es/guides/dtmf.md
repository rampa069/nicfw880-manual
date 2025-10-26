# Guía de Funciones DTMF

## Descripción General

La funcionalidad DTMF (Dual-Tone Multi-Frequency) incluye:
- Transmisión DTMF manual (ALPHA 13)
- Sistema DTMF Preset (BETA 01)
- Decodificación DTMF (BETA 02)
- DTMF Speed Dial (BETA 02)
- DTMF Enter (secuencias de un solo uso, BETA 04)

## DTMF Manual (ALPHA 13+)

Envía manualmente tonos DTMF y configura frecuencia de tono de repetidor personalizada.

**Configuración de tono de repetidor:** Categoría Advanced menu

## Sistema DTMF Preset (BETA 01+)

Almacena y transmite secuencias DTMF para acceso a repetidores, autopatch, etc.

### Abrir Menú DTMF Preset

**Tecla predeterminada:** SP-S2 (configurable)

**Requisitos:**
- Al menos un DTMF Preset válido debe estar guardado
- TX debe estar permitido

### Controles del Menú DTMF Preset

- **Up / Down:** Navegar al preset siguiente o anterior
- **Red:** Salir del menú
- **Green / PTT:** Seleccionar y comenzar transmitiendo secuencia DTMF
- **0–9:** Introducir número de preset DTMF (saltar a preset)
- **Long Press Green:** Editar nombre de preset

## Configuración

### Main Menu → DTMF

#### Deviation
Controla el volumen de los tonos DTMF.

#### Digit Time (ms)
Duración de transmisión de cada dígito.

#### Gap Time (ms)
Silencio entre dígitos.

#### Start Pause (ms)
Retardo después de engranar transmisión antes de que comiencen los tonos.

También usado para temporización de APRS Beacon TX (BETA 04E+).

#### Preset
Editar secuencias de dígitos DTMF almacenadas (hasta 99 presets).

## Editar Dígitos DTMF Preset

Acceso via: Main Menu → DTMF → Preset

### Mapeo de Teclas (Mientras se Edita)

- **0–9:** Introducir dígitos 0–9
- **Green:** Introducir dígito DTMF A
- **Up:** Introducir dígito DTMF B
- **Down:** Introducir dígito DTMF C
- **Red:** Introducir dígito DTMF D
- **\*:** Introducir Estrella (*)
- **#:** Introducir Almohadilla (#)
- **PTT:** Confirmar entrada
- **S1:** Retroceso
- **S2:** Abortar entrada

### Notas

- Introducir una secuencia DTMF en blanco/vacía eliminará/liberará el slot
- Máximo 99 presets (slots 1-99)
- Preset #99 está reservado para PTT ID

## PTT ID (BETA 01+)

**DTMF Preset #99** se usa para la secuencia PTT ID.

Cuando está configurado, esta secuencia se transmite automáticamente basándose en tu configuración PTT ID.

## DTMF Speed Dial (BETA 02+)

Transmisión de acceso rápido de presets DTMF via presión larga.

### Configuración

1. Asignar función "DTMF Speed Dial" a una user key
2. Presionar largamente esa tecla transmite el preset correspondiente

**Ejemplo:**
- Si LP-2 está configurado como DTMF Speed Dial
- Mantener 2 transmitirá preset #2

## DTMF Enter (BETA 04+)

Transmite una secuencia DTMF de un solo uso.

**Función User Key:** "DTMF Enter"

Útil para códigos o secuencias únicas que no necesitan ser almacenadas.

## Decodificación DTMF (BETA 02+)

Decodifica y muestra secuencias DTMF recibidas.

### Configuración

**Ruta:** Main Menu → DTMF

#### Opciones de Decoding

- **Off:** Sin decodificación
- **On:** Activar solo decodificación (mostrar dígitos)
- **P-ID:** Emparejar secuencias escuchadas contra presets y mostrar sus nombres

#### Display For (segundos)
Cuánto tiempo se muestran dígitos detectados en pantalla.

Los dígitos DTMF decodificados reemplazan temporalmente el Group Name en pantalla.

#### SeqEnd Pause (segundos)
Pausa después de un dígito detectado, marcando el fin de una secuencia.

Ayuda a distinguir entre transmisiones DTMF separadas.

## Usar DTMF con Otras Características

### Difusión de Ubicación APRS (BETA 04A+)

DTMF puede transmitir ubicación GPS a otra radio.

Ver [Guía GPS](gps.md) → sección Difusión de Ubicación DTMF.

### Temporización de Baliza APRS (BETA 04E+)

La configuración DTMF Start Delay se usa para controlar la temporización de APRS Beacon TX.

Ver [Guía APRS](aprs.md) para detalles.

## Consejos y Mejores Prácticas

### Organización de Presets

- Usa presets 1-9 para repetidores de acceso frecuente
- Usa números más altos para secuencias menos comunes
- Nombra presets claramente (usa entrada T9 para nombres descriptivos)
- Reserva preset #99 para PTT ID

### Ajustes de Temporización

Si los repetidores no responden:
- Aumenta **Digit Time** (duración de tono más larga)
- Aumenta **Start Pause** (más retardo antes de tonos)
- Ajusta **Gap Time** (espaciado entre dígitos)

### Configuración de Decodificación

Para decodificación confiable:
- Configura **SeqEnd Pause** a 1-2 segundos
- **Display For** debería ser suficientemente largo para leer la secuencia
- Usa **modo P-ID** si tienes secuencias comunes almacenadas como presets

## Solución de Problemas

### El Menú DTMF Preset No Se Abre
**Verificar:**
- Al menos un preset está guardado
- TX está permitido (no en modo solo RX)
- Tecla correcta asignada (predeterminado SP-S2)

### Repetidor No Responde a DTMF
**Intentar:**
- Aumentar Deviation (tonos más fuertes)
- Aumentar Start Pause (dar tiempo al repetidor para abrir)
- Verificar secuencia DTMF correcta
- Verificar si repetidor requiere duración de tono específica

### Decodificación DTMF No Funciona
**Verificar:**
- Decoding está configurado en "On" o "P-ID" (no "Off")
- Audio está claro (señal fuerte)
- SeqEnd Pause es apropiado para el patrón de transmisión

## Historial de Versiones

- **ALPHA 13:** Transmisión DTMF manual, tono de Repetidor
- **BETA 01:** Sistema DTMF Preset, PTT ID
- **BETA 02:** Decodificación DTMF, DTMF Speed Dial
- **BETA 04:** DTMF Enter (secuencias de un solo uso)
- **BETA 04E:** DTMF Start Delay usado para temporización APRS
