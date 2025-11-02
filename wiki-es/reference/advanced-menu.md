# Descripción General del Menú Advanced

Referencia completa para configuraciones en la categoría de menú Advanced.

**Ruta:** Main Menu → Advanced

---

## SPI Deferral

Define el retardo, en segundos, que la radio espera después de una acción del usuario antes de guardar cambios en la memoria flash.

**Propósito:** Retrasar escrituras ayuda a extender la vida del almacenamiento flash.

### Indicador de Advertencia

Mientras los cambios están pendientes, aparece un **triángulo rojo de advertencia** en la pantalla.

### ⚠️ Importante

**No apagues la radio mientras el triángulo de advertencia esté visible.**

Ya sea:
- Espera a que expire el período de deferral, O
- Usa la **opción de menú Shut Down** para guardar cambios de forma segura

---

## Tone Monitor Time

Especifica la duración, en segundos, que el indicador de tono CTCSS/DCS permanece visible en la pantalla después de que se pierde la señal recibida.

**Unidades:** Segundos

**Efecto:** Controla cuánto tiempo puedes ver qué tono se recibió después de que termina la transmisión.

---

## AM AGC Fix

Activa un nivel adicional de control automático de ganancia (AGC) para señales AM fuertes.

**Propósito:** Ayuda a prevenir sobrecarga y saturación del receptor en señales AM fuertes.

### Nota

El efecto **no es inmediato**.

Señales AM muy fuertes pueden producir un breve zumbido o chasquido antes de que el ajuste AGC tome efecto completo.

---

## Noise Gate

Cuando está activado, Noise Gate silencia el altavoz si el ruido externo excede la configuración Noise Ceiling en el menú Squelch.

**Funciona incluso cuando:**
- Squelch está forzado abierto (via squelch override)
- Configuración de Squelch es 0

### Propósito

Diseñado para uso con señales muy débiles para reducir ruido de fondo.

### Configuraciones Relacionadas

Ver [Configuraciones Squelch](squelch-settings.md) → Noise Ceiling

---

## AF Filters

Selecciona la combinación de filtros de audio para el receptor.

### Filtros Disponibles

Tres filtros están disponibles:
1. **High Pass**
2. **Low Pass**
3. **De-emphasis**

Se puede aplicar cualquier combinación de estos filtros.

### Modo FSK

Una configuración adicional diseñada para operación digital, como APRS.

**Cuándo usar:** APRS, packet, otros modos digitales

---

## DTMF Deviation

Ajusta el volumen de los tonos DTMF transmitidos.

### Nota Importante

La configuración **TX Deviation** también afecta el volumen DTMF.

**Ambas configuraciones deben ajustarse juntas para resultados óptimos.**

### Configuraciones Relacionadas

- TX Deviation (ver abajo)
- Main Menu → DTMF → Deviation

Ver [Guía DTMF](../guides/dtmf.md) para más información.

---

## Repeater Tone

Establece la frecuencia (en Hz) del tono de repetidor de ráfaga única que se transmite cuando se presiona la tecla asignada para enviar el tono de repetidor.

**Frecuencia predeterminada:** 1750 Hz

**Usos comunes:**
- Acceso a repetidores europeos
- Tono de llamada simplex

---

## TX Deviation

Ajusta la cantidad de desviación FM durante transmisión, controlando efectivamente el ancho de banda de tu señal.

**Valor predeterminado:** 64

### Importante

Valores por encima de **74** pueden causar distorsión que es notable para los oyentes.

### Afecta

- Ancho de banda de transmisión de voz
- Volumen de tonos DTMF (combinado con DTMF Deviation)
- Volumen de subtono (combinado con Subtone Deviation)

---

## Subtone Deviation

Ajusta el nivel de transmisión de subtono CTCSS/DCS.

### Importante

Configurar el nivel demasiado alto puede hacer que los tonos sean audibles durante transmisión normal.

La configuración **TX Deviation** también afecta el volumen de subtono.

**Para resultados óptimos:** Ajustar tanto TX Deviation como Subtone Deviation juntos.

---

## AM Hack Transform

**(ALPHA 19+)**

Ajusta finamente el parámetro de transformación del "Hack" TX AM.

### Nota

TX AM **no está ni cerca de ser perfecto**. Es experimental y los resultados probablemente variarán dramáticamente de usuario a usuario.

Estas configuraciones están diseñadas para ser experimentadas de modo que se puedan descubrir buenos valores predeterminados.

**Transform:** Ajusta la cantidad de offset aplicado a una transmisión AM simulada.

---

## AM Hack Displacement

**(ALPHA 19+)**

Ajusta finamente el parámetro de displacement del "Hack" TX AM.

**Displacement:** Ajusta el volumen aparente o ganancia de la modulación simulada.

### Característica Experimental

TX AM es experimental. Los resultados varían según:
- Unidad de radio
- Frecuencia
- Nivel de potencia
- Antena

Se anima a los usuarios a experimentar y compartir valores que funcionen.

---

## Audio Boost

**(BETA 04F+)**

Incrementalmente aumenta la ganancia de audio del chip de radio para compensar radios con salida de audio amplificada baja.

**Ruta:** Advanced → Audio Boost

**Cuándo usar:**
- Volumen de altavoz de radio es demasiado bajo incluso al máximo
- Salida AF a altavoz/auriculares externos es débil

**Cómo funciona:** Aumenta etapas de ganancia en la ruta de audio del receptor.

---

## PIN

**(BETA 03+)**

Asegura tu dispositivo con un PIN.

Cuando está activado, una vez que el teclado está bloqueado no se puede desbloquear hasta introducir el PIN correcto.

### PIN Action

**(BETA 3A+)**

**Ruta:** Advanced → PIN Action

**Opciones:**
- **Normal:** PIN requerido para desbloquear teclado después de bloqueo
- **Startup:** Forzar entrada de PIN al encender

Configurar a 'Startup' para forzar entrada de PIN al encender para máxima seguridad.

---

## Auto Lock

**(BETA 07+)**

Bloquea automáticamente el teclado después de un período especificado de inactividad.

**Ruta:** Advanced → Auto Lock

**Configuraciones:**
- **0:** Deshabilitado (el teclado nunca se bloquea automáticamente)
- **1-9 segundos:** Tratado como mínimo 10 segundos
- **10+ segundos:** El teclado se bloquea después del tiempo especificado

### Cómo Funciona

Después del tiempo especificado sin presiones de teclas, el teclado se bloquea automáticamente.

Presiona cualquier tecla para desbloquear (o introduce PIN si el PIN está habilitado).

### Casos de Uso

- **Operación portátil:** Prevenir presiones accidentales de teclas cuando la radio está en bolsillo/bolso
- **Seguridad:** Combinar con PIN para bloqueo de seguridad automático
- **Ahorro de batería:** Combinado con "Wake LCD On: Keys Only" para conservación de energía

---

## Wake LCD On

**(BETA 03+)**

Configura qué despierta la pantalla.

### Opciones

- **Keys Only:** Solo presiones de teclas despiertan la pantalla
- **RX:** Señal recibida o presión de tecla despierta la pantalla
- **TX:** Transmitir o presión de tecla despierta la pantalla
- **All:** Cualquier evento despierta la pantalla

### Ahorro de Energía

Usar "Keys Only" para máxima conservación de batería.

Usar "All" para máxima capacidad de respuesta.

---

## Consejos y Mejores Prácticas

### SPI Deferral
- Configurar a valor razonable (5-10 segundos típico)
- Permite ajustes rápidos sin escrituras constantes a flash
- Siempre usar opción de menú Shut Down (no simplemente quitar batería)

### Configuraciones de Deviation
- Comenzar con predeterminados (TX Deviation = 64)
- Hacer ajustes pequeños
- Probar con otra radio
- Demasiado alto = distorsión, señal demasiado ancha
- Demasiado bajo = audio débil, difícil de entender

### Noise Gate
- Usar con señales débiles en entornos ruidosos
- Combinar con configuración Noise Ceiling apropiada
- Puede cortar señal débil si se configura demasiado agresivamente

### AM AGC Fix
- Activar si recepción AM se sobrecarga en señales fuertes
- Normal que haya breve chasquido antes de que AGC se engrane
- No necesario para operación FM típica

---

## Documentación Relacionada

- [Referencia Configuraciones Squelch](squelch-settings.md)
- [Guía DTMF](../guides/dtmf.md)
- [Guía Calibración](../guides/calibration.md)
- [Guía Sintonizador Si4732](../guides/si4732-tuner.md)
