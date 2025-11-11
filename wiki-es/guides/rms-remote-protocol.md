# Protocolo Remoto RMS

El Protocolo Remoto nicFW880 permite que aplicaciones externas controlen la radio de forma remota a través de una conexión serial. Esto habilita características como pantalla remota, emulación de teclado y control PTT.

## Descripción General

El protocolo remoto utiliza una conexión serial con tasa de BAUD configurable y proporciona:
- Renderizado remoto de pantalla (texto y gráficos)
- Emulación de teclas del teclado
- Control PTT (Push-To-Talk)
- Comunicación bidireccional con mecanismo keepalive

---

## Conexión Inicial

### Paso 1: Cambiar Tasa BAUD

Comienza a **38400 baud** y envía la secuencia "Change BAUD":

```
0xAA
0x70
[4 bytes little endian] Nueva tasa BAUD
```

**Respuesta de la Radio:**
```
0x70
```

**Acción Requerida:**
1. Al recibir `0x70`, cambia la tasa BAUD del host para coincidir con la nueva tasa
2. Espera 100ms
3. La radio enviará otro reconocimiento a la nueva tasa BAUD:
   ```
   0x70
   ```

### Paso 2: Iniciar Operación Remota

Envía la secuencia "Start Remote":

```
0xAA
0x51
```

La operación remota está ahora activa.

---

## Keepalive (PING/PONG)

Para mantener la conexión remota, el **host debe enviar un PING cada segundo**:

**Host envía (PING):**
```
0xAA
```

**Radio responde (PONG):**
```
0xAA
```

Si no se mantiene el keepalive, la conexión remota puede expirar.

---

## Comandos de Host a Radio

Estos son **comandos de un solo byte** y **NO son reconocidos** por la radio.

| Comando | Byte | Descripción |
|---------|------|-------------|
| **PTT Pressed** | `0x13` | Activar transmisión (PTT presionado) |
| **PTT Released** | `0xFE` | Desactivar transmisión (PTT liberado) |
| **Keypad Key Pressed** | `0x00` a `0x12` | Simular presión de botón del teclado (ver mapa abajo) |
| **Keypad Key Released** | `0xFF` | Liberar tecla actualmente presionada |
| **Exit Remote** | `0x52` | Salir del modo de control remoto |

### Mapa de Teclas del Teclado

Las teclas del teclado están mapeadas a bytes `0x00` hasta `0x12` (19 teclas en total):

| Byte | Tecla | Byte | Tecla | Byte | Tecla |
|------|-------|------|-------|------|-------|
| `0x00` | 0 | `0x07` | 7 | `0x0E` | Side Key 2 |
| `0x01` | 1 | `0x08` | 8 | `0x0F` | Exit |
| `0x02` | 2 | `0x09` | 9 | `0x10` | Menu |
| `0x03` | 3 | `0x0A` | * (Star) | `0x11` | Up |
| `0x04` | 4 | `0x0B` | # (Hash) | `0x12` | Down |
| `0x05` | 5 | `0x0C` | Emergency | - | - |
| `0x06` | 6 | `0x0D` | Side Key 1 | - | - |

**Nota:** Para simular una pulsación de tecla, envía el byte de la tecla (`0x00` a `0x12`), luego envía `0xFF` para liberar.

---

## Comandos de Radio a Host

La radio envía comandos de dibujo para renderizar la pantalla en el host.

### Comando Draw Text

Renderiza texto en la pantalla con fuente y colores especificados.

**Estructura del Paquete:**

| Byte(s) | Campo | Descripción |
|---------|-------|-------------|
| 1 | Signature | `0x02` - Comando de dibujo de texto |
| 1 | X Coordinate | Posición X en pantalla (0-255) |
| 2 | Y Coordinate | Posición Y en pantalla (little endian, 0-65535) |
| 1 | Font Number | Selección de fuente (ver tabla abajo) |
| 2 | Background Color | Formato RGB565 (little endian) |
| 2 | Foreground Color | Formato RGB565 (little endian) |
| Variable | Text | Cadena ASCII terminada en null |

**Números de Fuente:**

| Font Number | Descripción |
|-------------|-------------|
| `0x00` | ASCII Font 8×8 |
| `0x01` | ASCII Font 8×16 |
| `0x02` | ASCII Font 16×16 |
| `0x03` | ASCII Font 16×24 |
| `0x04` | ASCII Font 24×24 |
| `0x05` | ASCII Font 24×32 |
| `0x06` | Symbols Font 16×16 |

**Formato de Color (RGB565):**
- Formato de color de 16 bits
- 5 bits Rojo, 6 bits Verde, 5 bits Azul
- Orden de bytes little endian

### Comando Draw Rectangle

Dibuja un rectángulo relleno en la pantalla.

**Estructura del Paquete:**

| Byte(s) | Campo | Descripción |
|---------|-------|-------------|
| 1 | Signature | `0x01` - Comando de dibujo de rectángulo |
| 1 | X Coordinate | Posición X en pantalla (0-255) |
| 2 | Y Coordinate | Posición Y en pantalla (little endian, 0-65535) |
| 1 | Width | Ancho del rectángulo en píxeles (0-255) |
| 2 | Height | Alto del rectángulo en píxeles (little endian, 0-65535) |
| 2 | Color | Color de relleno formato RGB565 (little endian) |

---

## Notas de Implementación

### Configuración de Tasa BAUD

- La conexión inicial debe ser a **38400 baud**
- Después del cambio de BAUD, espera **100ms** antes de esperar respuesta de la radio
- Tasas BAUD comunes: 9600, 19200, 38400, 57600, 115200

### Requisitos de Temporización

- **PING keepalive:** Debe enviarse cada segundo
- **Retardo de cambio BAUD:** 100ms entre cambio de BAUD del host y la radio
- **Temporización de comandos:** Los comandos de un byte no tienen retardo de reconocimiento

### Manejo de Errores

- Si PING/PONG falla, la conexión puede perderse
- Sin reconocimiento para comandos keypad/PTT significa sin retroalimentación de error
- Monitorear salud de conexión vía mecanismo PING/PONG

### Renderizado de Pantalla

- La aplicación host debe implementar conversión de RGB565 a formato nativo de pantalla
- El renderizado de texto requiere implementación de los tamaños de fuente especificados
- El dibujo de rectángulos proporciona primitivas gráficas básicas para elementos de UI

---

## Ejemplo de Flujo de Implementación

1. **Conectar a 38400 baud**
2. **Enviar comando de cambio BAUD** (ej., a 115200)
3. **Esperar primer ACK** (`0x70`)
4. **Cambiar BAUD del host a 115200**
5. **Esperar 100ms**
6. **Recibir segundo ACK** (`0x70` a 115200)
7. **Enviar Start Remote** (`0xAA 0x51`)
8. **Iniciar bucle PING** (enviar `0xAA` cada segundo, esperar `0xAA` de vuelta)
9. **Procesar comandos de dibujo** de la radio
10. **Enviar comandos keypad/PTT** según sea necesario
11. **Salir con** `0x52` cuando termine

---

## Casos de Uso

### Aplicación de Pantalla Remota
- Renderizar pantalla de la radio en PC/dispositivo móvil
- Útil para software de escritorio o aplicaciones móviles
- Habilita monitoreo remoto del estado de la radio

### Aplicación de Control Remoto
- Controlar radio desde PC vía serial
- Automatizar operaciones de la radio
- Integración con software de logging o modos digitales

### Integración RMS Personalizada
- Construir Radio Management Software personalizado
- Implementar interfaces de control especializadas
- Crear herramientas de automatización

---

## Relacionado

- [Guía de Calibración](calibration.md) - Configuración de conexión serial para calibración
- [Mapeo de Teclas](key-mappings.md) - Referencia de teclas físicas para emulación remota del teclado

---

**Versión del Protocolo:** v5.08.01
**Última Actualización:** Noviembre 2025
