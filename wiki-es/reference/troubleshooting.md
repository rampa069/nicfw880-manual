# Guía de Solución de Problemas

Problemas comunes y soluciones para nicFW880.

---

## Instalación y Flasheo

### Radio No Soportada / Pantalla Blanca Durante Flasheo

**Síntomas:**
- La pantalla se pone blanca (en lugar de negra) durante flasheo de firmware
- La radio no responde después del flasheo

**Causa:** Modelos tempranos de iRadio UV-98 tienen diferencias de hardware (retroiluminación LCD).

**Solución:** Estos modelos no están soportados. Solo radios con números de serie >300 están soportados.

**Modelos soportados:**
- Radtel RT-880, RT-880G (serial >300)
- iRadio UV-98 Plus (serial >300)

### USB/LSB No Funciona en Sintonizador Si4732

**Síntomas:** Modos USB/LSB no reciben correctamente en el tuner

**Solución:**
1. Seguir proceso de restauración SPI Flash
2. Cerrar RMS
3. Reabrir RMS

**Referencia:** Ver [Guía Sintonizador Si4732](../guides/si4732-tuner.md)

### Configuraciones Se Reinician Después de Actualización de Firmware

**Comportamiento esperado:** Cambios de versión mayores pueden reiniciar configuraciones.

**Solución:**
- Hacer copia de seguridad de canales/configuraciones a CSV antes de actualizar
- Restaurar desde CSV después de actualización
- Para BETA 04F y similares: Mantener EMG al encender para configuraciones predeterminadas limpias

---

## Batería y Energía

### Lectura de Batería Incorrecta

**Soluciones:**
1. Recalibrar batería (Main Menu → Calibration)
2. Ver [Guía Calibración](../guides/calibration.md) → Calibración de Batería

### Triángulo Rojo No Desaparece

**Causa:** Cambios pendientes, esperando a que expire período de SPI Deferral.

**Soluciones:**
- Esperar a que desaparezca el triángulo (timeout de SPI Deferral)
- Usar Main Menu → System → Shut Down
- **¡No apagar mientras el triángulo esté visible!**

---

## Problemas GPS

### GPS No Funciona

**Verificar:**
1. Main Menu → GPS → Enabled está en ON (movido del menú Time en BETA 04E)
2. Estado del ícono GPS (antena arriba = lock, antena abajo = sin lock)
3. Vista despejada del cielo para adquisición de satélites

**Solo modelos GPS:** RT-880G

### GPS No Hace Lock

**Soluciones:**
- Moverse a ubicación con vista despejada del cielo
- Esperar 2-5 minutos para lock inicial
- Verificar ícono GPS (antena debe apuntar arriba cuando tiene lock)

### Distancia GPS Incorrecta (Pre-BETA 05G)

**Corregido en:** BETA 05G - Cálculo de distancia GPS ahora corrige por latitud

**Solución:** Actualizar a BETA 05G o posterior

---

## Problemas APRS

### Botones Laterales Dejan de Funcionar

**Causa:** Squelch abierto mientras decodificación APRS activa (pre-BETA 05C)

**Soluciones:**
1. Configurar Main Menu → APRS → Use VFO a A, B, o C
2. No usar squelch override en VFO asignado a APRS
3. Actualizar a BETA 05C+ para corrección

**BETA 05D:** Squelch override cancelado automáticamente al cambiar VFOs

### Balizas APRS No Transmiten

**Verificar:**
1. Callsign configurado (Main Menu → APRS → Callsign)
2. TX permitido en VFO
3. Si usa balizas automáticas: Beacon Time o Beacon Distance configurados
4. Nota: Balizas automáticas limitadas a una por minuto

### No Se Escuchan Tonos APRS

**Comportamiento normal:** Datos APRS normalmente no audibles.

**Para escuchar (diagnóstico):** Main Menu → APRS → Hear Tones → On

---

## Problemas de Escaneo

### Menú Scan Preset No Abre

**Requisitos:**
1. Al menos un scan preset guardado
2. Debe estar en modo VFO (no modo channel)
3. Tecla de activación correcta (predeterminado LP-1)

**Solución:** Verificar todos los requisitos arriba

### Escaneo Se Detiene en Frecuencia No Deseada

**Solución:** Presionar # para excluir esa frecuencia del escaneo

---

## Problemas DTMF

### Menú DTMF Preset No Abre

**Requisitos:**
1. Al menos un DTMF preset válido guardado
2. TX está permitido (no en modo solo RX)
3. Tecla correcta asignada (predeterminado SP-S2)

**Solución:** Verificar todos los requisitos

### Repetidor No Responde a DTMF

**Soluciones:**
1. Aumentar Deviation (tonos más fuertes)
2. Aumentar Start Pause (dar tiempo al repetidor para abrir)
3. Verificar secuencia DTMF correcta
4. Verificar si repetidor requiere duración de tono específica

**Ajustar:**
- Main Menu → DTMF → Deviation
- Main Menu → DTMF → Start Pause
- Main Menu → DTMF → Digit Time

---

## Problemas Squelch

### Squelch Se Abre con Ruido

**Soluciones:**
- Aumentar Squelch Level
- Aumentar Noise Trigger
- Bajar Noise Ceiling
- Activar Noise Gate

**Ver:** [Referencia Configuraciones Squelch](squelch-settings.md)

### Squelch Charlatanea (Apertura/Cierre Rápido)

**Soluciones:**
- Aumentar Hysteresis
- Aumentar Squelch Throttle
- Aumentar Squelch Tail

### Squelch Corta Durante Señal Débil

**Soluciones:**
- Aumentar Squelch Tail
- Aumentar Hysteresis
- Bajar Squelch Level
- Verificar Noise Ceiling (puede estar demasiado bajo)

---

## Problemas Spectrum Scope

### Scope No Inicia (BETA 05G+)

**Causa:** No se puede iniciar scope en modos basados en channel

**Solución:** Cambiar a modo VFO

### Configuraciones Scope Se Reinician Después de Cerrar Menús

**Corregido en:** BETA 05G

**Solución:** Actualizar a BETA 05G o posterior

### Cambios de Modulación Persisten Después de Salir del Scope

**Corregido en:** BETA 05G

**Solución:** Actualizar a BETA 05G o posterior

---

## Problemas Multiwatch

### Multiwatch No Cambia

**Verificar:**
1. Multiwatch está activado
2. Configuraciones squelch en todos los VFOs
3. Frecuencias VFO válidas y configuradas

### Ruido de Clic de Relé (Pre-BETA 05F)

**Causa:** Mezclar VFOs HF y VHF/UHF causa conmutación de relé

**Soluciones:**
- Actualizar a BETA 05F+ para soporte de VFO mixtos
- Solución alternativa: Mantener todos los VFOs en mismo grupo de banda

---

## Problemas Sintonizador Si4732

### Altavoz Silenciado en Modo Tuner

**Corregido en:** BETA 04A

**Solución:** Actualizar a BETA 04A o posterior

### Medidor de Señal Causando Ruido

**Solución:** Desactivar con LP-5

### Interferencia de Línea de Potencia

**Solución:** Activar filtro powerline con LP-8

### Búsqueda No Se Detiene

**Corregido en:** BETA 3C (SP-Red detiene búsqueda)

**Solución:** Actualizar a BETA 3C o posterior

---

## Problemas Repetidor Crossband

### XB Repeater No Inicia

**Verificar todos los requisitos:**
1. ✓ ¿VFO-A y VFO-B en modo simplex?
2. ✓ ¿Ambos VFOs permitidos para transmitir?
3. ✓ ¿Un VFO en VHF, otro en UHF?
4. ✓ ¿Squelch cerrado (no abierto)?

**Si falla algún requisito, modo XB no se activará.**

### Disparo/Bucle Constante

**Causas:**
- Squelch demasiado suelto (captando ruido)
- Retroalimentación entre antenas
- Señal cercana fuerte

**Soluciones:**
- Ajustar squelch más apretado
- Mejorar aislamiento de antena
- Verificar fuentes de interferencia

---

## Problemas Frecuencia/Calibración

### Frecuencias Parecen Desajustadas

**Solución:** Realizar Radio Frequency Calibration (XTAL671)

**Ver:** [Guía Calibración](../guides/calibration.md) → Calibración de Radiofrecuencia

### Potencia de Salida Demasiado Baja/Alta

**Soluciones:**
1. Recalibrar configuraciones de potencia usando firmware de diagnóstico
2. Verificar SWR de antena
3. Verificar que no esté en modo de potencia baja

---

## Problemas Remote Control (BETA 05E+)

### Tab Remote No Funciona

**Requisitos:**
- Se requieren AMBOS firmware 05E y RMS 05E

### Pantalla No Se Refresca

**Solución:** Abrir y cerrar menú para disparar redibujado

### Conexión Se Cae al Presionar PTT

⚠️ **ADVERTENCIA:** Energía RF cerca del cable USB puede freír el chip UART

**Solución:**
- Mantener antena alejada del cable USB
- Usar potencia más baja al probar
- Este es comportamiento esperado con mala colocación del cable

---

## Problemas Generales

### Frecuencia RX Desaparece en TX

**Corregido en:** ALPHA 15

**Solución:** Actualizar a ALPHA 15 o posterior

### Errores de Comunicación Serial

**Corregido en:** BETA 3C (errores introducidos en 3B)

**Solución:** Actualizar a BETA 3C o posterior

### Frecuencia TX Se Limpia Durante Channel Scan

**Corregido en:** ALPHA 17a

**Solución:** Actualizar a ALPHA 17a o posterior

### No Se Puede Acceder a Menú en Spectrum Scope

**Añadido en:** BETA 05F (SP-GREEN accede menú)

**Solución:** Actualizar a BETA 05F o posterior, usar SP-GREEN

---

## Problemas RMS en macOS

### RMS No Se Ejecuta en macOS

**Requerido:**
- BAUD debe estar en 38400
- Puede necesitar remover flags de cuarentena
- Puede necesitar ajustar permisos de archivo

**Comandos a probar:**
```bash
xattr -d com.apple.quarantine /path/to/RMS
chmod +x /path/to/RMS
```

**Soporte:** Versiones macOS provistas en base "compilar y esperar". Solo soporte de comunidad.

---

## Obtener Ayuda

### Antes de Pedir Ayuda

1. **Verificar versión:** Muchos problemas corregidos en versiones posteriores
2. **Verificar hardware soportado:** Número de serie >300
3. **Revisar notas de lanzamiento:** Problema puede ser conocido
4. **Verificar triángulo RED:** Esperar a que se guarden antes de apagar
5. **Probar reset de configuraciones:** Mantener EMG al encender

### Qué Incluir al Reportar Problemas

- Versión exacta de firmware (ej., "BETA 05G")
- Modelo de radio y número de serie
- Pasos exactos para reproducir
- Lo que esperabas vs. lo que ocurrió
- Cualquier mensaje de error o advertencia

### Recursos

- Patreon: https://www.patreon.com/c/nicsure/posts
- GitHub (RMS): https://github.com/nicsure/nicfw880-rms-builder/
- Notas de lanzamiento en [Changelog](../changelog/)

---

## Documentación Relacionada

- [Guía Calibración](../guides/calibration.md)
- [Configuraciones Squelch](squelch-settings.md)
- [Menú Advanced](advanced-menu.md)
- [Todas las Guías](../guides/)
