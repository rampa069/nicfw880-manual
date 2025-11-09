# Registro de Versiones ALPHA

Historial completo de versiones desde ALPHA 12 hasta ALPHA 19 (de más antiguo a más nuevo).

---

## ALPHA 12 (13 de agosto)

### Característica Principal: UI Configurable

Lo principal de este lanzamiento es la **UI configurable**. Esto tomó mucho tiempo hacerlo porque hay muchas cosas que necesita hacer.

### Cambios
- Ajustes y refinamientos de firmware
- Sistema de UI configurable introducido
- Varias correcciones de bugs

**Nota:** Debido a la gran complejidad, se anticiparon algunos problemas después del lanzamiento.

---

## ALPHA 13

### DTMF Manual y Tono de Repetidor

- Enviar manualmente tonos DTMF
- Configurar frecuencia de tono de repetidor personalizada
- Ajustar frecuencia de tono de repetidor en categoría Advanced menu

**Nota:** Presets DTMF aún no disponibles (vendrán en lanzamiento futuro)

### Repetidor Crossband (Long-press EMG)

Permite retransmitir entre VHF y UHF.

**Requisitos de configuración:**
- VFO-A y VFO-B deben estar en modo simplex
- Ambos deben tener permitido transmitir
- Un VFO en VHF, el otro en UHF
- Squelch debe estar cerrado

**Controles mientras se ejecuta:**
- Presionar RED para salir del modo XB Repeater
- Presionar STAR para alternar pantalla encendida/apagada

### Control de Brillo de Pantalla

- Modos Día/Noche añadidos
- Cada uno con brillo ajustable individualmente
- Alternado rápido: Presión corta EMG para cambiar entre Día y Noche
- O usar menú para seleccionar manualmente

### Frequency Counter (Escaneo Rápido de Frecuencia) (Long-press 7)

Funciona de manera similar a modelos anteriores, ahora incluye modo HF:

- **Iniciado por encima de 70 MHz:** Escanea señales en VHF y UHF
- **Iniciado por debajo de 70 MHz:** Intenta escanear solo señales HF (no probado)

**Nota:** Esto eliminará todos los canales, bandplans, skins y fonts. Hacer copia de seguridad en CSVs antes de flashear.

---

## ALPHA 14 (16 de agosto)

⚠️ **¡El firmware NO soporta radios con número de serie < 300!**

### Cambios

- Nuevo logo de inicio
- Tonelada de ajustes, pequeñas solicitudes y correcciones reportadas desde ALPHA 13

El cambio visible principal es el logo de inicio. No se añadió mucho más visiblemente, pero muchas mejoras detrás de escena.

---

## ALPHA 15 (18 de agosto)

⚠️ **¡El firmware NO soporta radios con número de serie < 300!**

### Calibración de Potencia

Configuración de calibración predeterminada presente al iniciar RMS (basada en radio del desarrollador).

Puede que necesites ajustar finamente para tu propia radio. Usar firmware de diagnóstico de lanzamiento anterior para experimentar con configuraciones de potencia (bias y gains).

https://www.patreon.com/posts/133266503?collection=1570664

### Roger Beep

"Sí, sí, ya sé, dije que no añadiría tal cosa. Pero esta radio va a ser usada por CBers, y a ellos les gustan sus Bleepy Bleeps."

### Tiempo de Espera de Dimming de LCD

- LCD ahora tendrá tiempo de espera durante escaneo
- TX despertará el LCD

### Filtros AF Añadidos

Filtros de audiofrecuencia implementados.

### Multiwatch VFO Switch

Determina si multiwatch permanecerá en el VFO detectado o cambiará de vuelta después de pérdida de señal.

### Noise Gate Añadido

### Function Menu Añadido

**Tecla predeterminada:** LP-GREEN

Abre un menú permitiendo navegar y seleccionar cualquier función de usuario y activarla.

### Key Beeps Añadidos

"Sé que muchos no lo usan pero yo sí. Solo me gusta algo de retroalimentación al presionar una tecla."

Opción de menú selecciona la frecuencia del tono de beep.

### Otras Mejoras

- Añadido menú de clic derecho al tab de canales en RMS
- Corregido error de frecuencia RX desapareciendo en TX

---

## ALPHA 16 (Lanzamiento FM Tuner)

⚠️ **¡El firmware NO soporta radios con número de serie < 300!**

### ¡Sintonizador Si4732 basado en FM! 🎶

Lo más destacado de este lanzamiento es el nuevo Sintonizador Si4732 basado en FM.

**Soporte actual:** Solo banda de radiodifusión FM

**Próximamente:** SSB, AM, SW, MW y LW

### Tecla de Activación Predeterminada

**LP-8** (reasignable)

### Controles Dentro del Tuner

- **SP-0 a 9:** Introducir nueva frecuencia
- **SP-Red:** Salir del tuner / detener búsqueda
- **SP-#:** Buscar hacia adelante
- **SP-\*:** Buscar en reversa
- **LP-#:** Alternar scope encendido/apagado
- **LP-\*:** Alternar silenciamiento (squelch) encendido/apagado

---

## ALPHA 17 (27 de agosto)

⚠️ **¡El firmware NO soporta radios con número de serie < 300!**

### IMPORTANTE: Restauración SPI Flash Requerida

Debes seguir el proceso de restauración SPI Flash.

Los modos USB y LSB en el Sintonizador Si4732 no operarán correctamente sin esto.

**Después de restaurar SPI Flash:** Cerrar el RMS y reabrirlo.

### Squelch Hysteresis

- Predeterminados ajustados
- Dividido en configuraciones ExNoise y RSSI
- Límites de rango extendidos a 20

### Mejoras Módulo Sintonizador Si4732

- Ahora soporta **bandas LW, MW y SW**
- Presets pueden crearse/editarse con app RMS o a través de menú CMS
- Presets almacenados/numerados igual que slots de canales regulares

**Nota:** Tuner Presets en RMS no necesitan información de banda. La banda se infiere de la frecuencia.

**Onda corta dividida en tres bandas:**
- **SW1:** 1.7 – 6.0 MHz
- **SW2:** 6.0 – 12 MHz
- **SW3:** 12 – 30 MHz

### Controles Actualizados

**Activación:** LP 8 → Entrar al Módulo Sintonizador Si4732 (reasignable)

**Presión Corta:**
- SP RED → Salir tuner / detener búsqueda
- SP GREEN → Abrir Main Menu
- SP 0–9 → Introducir frecuencia (VFO) o número de canal (Channel)
- SP \* → Buscar hacia atrás (solo VFO)
- SP # → Buscar hacia adelante (solo VFO)
- SP S1 → Cambiar band (solo VFO)
- SP S2 → Cambiar modulation (solo VFO)

**Presión Larga:**
- LP GREEN → Alternar modos VFO/Channel
- LP 1 → Introducir nuevo paso de frecuencia
- LP 2 → Alternar modo de ajuste BFO
- LP 3 → Reiniciar BFO a cero
- LP # → Alternar scope encendido/apagado
- LP \* → Alternar squelch/silenciamiento (Solo aconsejado para modo FM)

⚠️ **Nota:** Asignaciones de teclas no finales, se refinarán en lanzamientos futuros.

### Cambios ALPHA 17a

- Corregida limpieza de Frecuencia TX para escaneo en modo channel
- Modo CW Si4732 corregido
- Ajuste BFO Si4732 ahora funciona en modo channel

---

## ALPHA 18a (1 de septiembre)

### !! IMPORTANTE !! ¡Este firmware NO SOPORTA el iRadio UV-98 (Plus)!

El iRadio UV98 (Plus) NO ES LO MISMO que el Radtel RT-880(G).

"En este momento no tengo un UV-98 así que es imposible para mí soportar el modelo. Tengo uno ordenado, pero hasta entonces no se puede dar soporte para el iRadio UV-98."

### TX AM Experimental

Que el desarrollador sepa cómo funciona.

### Configuración Squelch Tail

Introducida configuración Squelch Tail.

### Actualizaciones Módulo Si4732

- Control de ancho de banda variable
- Alternar medidor de señal (deshabilitar puede reducir ruido en ciertas frecuencias)
- Filtro de línea de potencia implementado
- Tiempo de espera de pantalla ahora funciona

**Atajos de teclas:**
- **LP-5:** Activar/desactivar medidor de señal
- **LP-8:** Activar/desactivar filtro de línea de potencia
- **LP-9:** Alternar ancho de banda (6/4/3/2/1 kHz)
- **SP-EMG:** Alternar Día/Noche

### Nuevo Spectrum Scope 📡

Visualiza señales a través de un rango.

**Lanzamiento predeterminado:** LP-2 (configurable)

Cuando se abre:
- Se centra en frecuencia VFO actualmente activa
- Usa configuraciones actuales de step, modulation y bandwidth
- Muestra a través de scope de 60 barras de ancho

**Visualización:** Parte superior muestra frecuencia central, ancho de banda, step, señal más fuerte, modulación y ancho de scope.

**Controles del scope:**
- **SP-0/9:** Introducir nueva frecuencia central
- **SP-RED:** Salir del modo monitor / Salir del scope
- **SP-#:** Centrar scope en señal más fuerte
- **SP-Up/Down:** Desplazar frecuencia central por step actual
- **SP-S1:** Monitorear frecuencia central
- **SP-S2:** Monitorear frecuencia de señal más fuerte
- **LP-#:** Alternar ancho de scope (15/30/60/120 barras)
- **LP-\*:** Introducir nuevo paso de frecuencia

### NOTA IMPORTANTE SOBRE EL SPECTRUM SCOPE

**EL SPECTRUM SCOPE NO ES UN ESCÁNER.**

La radio es INCAPAZ de escuchar una señal y escanear otras al mismo tiempo. El scope tiene que DETENERSE para escuchar una señal.

**!!ASÍ QUE SI QUIERES ESCANEAR, ¡EJECUTA UN ESCANEO REGULAR!!**

### Otras Actualizaciones

- Más fonts en carpeta extras
- Skins actualizados

---

## ALPHA 19 (4 de septiembre)

### Scan Presets 🔑

Ahora soportados con hasta 99 presets.

**Tecla de Activación Predeterminada:** LP-1 (puede ser reasignada)

**Nuevos menús "Scanning":** Load, Delete y Save presets

### Cómo Funciona

- En Menú Scan Preset, usar Up/Down o 0–9 para elegir preset
- Presionar Green para iniciar escaneo
- Long-press Green (LP-Green) para editar nombre de preset
- También configurable en RMS → Scan Presets tab

👉 **Nota:** Menú Scan Preset solo se abre si tienes al menos un preset asignado y estás en modo VFO.

### Otras Actualizaciones ⚡

- RMS ahora puede cargar CSVs de CHIRP
- Icono de carga añadido
- Varios ajustes BTS y correcciones de bugs reportadas desde 18a

### Limitación Conocida ⚠️

Acción Long-press Scan Preset Menu no añadida en RMS aún. Si quieres reconfigurar tecla de activación, necesitarás hacerlo directamente en la radio por ahora.

---

**Fin de Versiones ALPHA**

El ciclo de desarrollo ALPHA concluyó en septiembre de 2025, dando paso a [Versiones BETA](beta-releases.md).

Todas las características desarrolladas a través de los ciclos ALPHA y BETA fueron consolidadas en **v5.08.01** - la primera versión estable oficial. Ver [Versiones Oficiales](releases.md) para detalles.
