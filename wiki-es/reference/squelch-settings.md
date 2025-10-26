# Descripción General de Configuraciones Squelch

Referencia completa para configuraciones de squelch y cómo interactúan.

**Ruta:** Main Menu → Squelch (o similar, dependiendo de versión)

---

## Noise Ceiling

Establece el umbral al cual el ruido externo (ex-noise) se considera máximo.

### Efecto

- Cuando el nivel de ruido alcanza este punto o superior, **squelch se cierra inmediatamente**
- Sin retardo ni excepción
- Asegura silencio completo cuando ruido externo excesivo está presente

### Comportamiento

Cualquier ruido en o por encima de este nivel dispara cierre inmediato de squelch.

Esta configuración **sobrescribe** Squelch Tail - si se excede Noise Ceiling, squelch se cierra inmediatamente independientemente de configuración de tail.

---

## Noise Trigger

Determina el umbral por debajo del cual el ruido externo (ex-noise) debe caer para que el squelch se abra.

### Efecto

Squelch solo se abrirá cuando el ruido externo caiga por debajo de este nivel.

Funciona en conjunto con la configuración **Noise Hysteresis** para prevenir alternancia rápida de squelch.

### Configuración Relacionada

Referirse a **Noise Hysteresis** para contexto adicional sobre suavizado de operación de squelch.

---

## Squelch Level

Establece el valor de S-Unit requerido para que el squelch se abra.

### Cómo Funciona

El valor de S-Unit corresponde a **Squelch Level − 1**.

### Ejemplos

| Configuración | S-Unit Requerido | Notas |
|---------------|------------------|-------|
| 0 | Off | Squelch permanentemente abierto |
| 1 | S0 | Modo solo Ruido - se abre con cualquier señal detectable |
| 4 | S3 | Requiere que señal alcance al menos S3 |
| 9 | S8 | Solo señales muy fuertes abren squelch |

### Casos Especiales

- **Configuración 0 (Off):** Squelch permanentemente abierto (sin squelch)
- **Configuración 1 (S0):** Efectivamente activa **modo solo Ruido** - se abre con cualquier señal detectable

---

## Noise and Signal Hysteresis

**(ALPHA 17+: Rango extendido a 20)**

Hysteresis establece un buffer para prevenir que el squelch se abra y cierre rápidamente debido a fluctuaciones pequeñas en niveles de ruido o señal.

**Unidades:** 1 dBm por 12 (aproximadamente 0.083 dBm por unidad)

### Efecto

- Se aplica tanto a lógica de squelch basada en ruido como en señal
- Introduce diferencia entre umbrales de apertura y cierre
- Reduce "charla de squelch" causada por variaciones menores en niveles de señal o ruido

### Cómo Funciona Hysteresis

Si el squelch se abre en cierto nivel, solo se cerrará cuando la señal/ruido caiga por debajo de ese nivel **menos** el valor de hysteresis.

### Ejemplo

```
Squelch se abre en: 5 dBm
Hysteresis: 2 unidades (≈ 0.17 dBm)
Squelch se cierra en: 5 - 0.17 = 4.83 dBm
```

Esto previene apertura/cierre rápido cuando señal fluctúa alrededor del umbral.

### Rango

**(ALPHA 17+):** Rango extendido a 20 unidades

Dividido en:
- Hysteresis **ExNoise**
- Hysteresis **RSSI** (señal)

---

## Squelch Throttle

Establece un retardo mínimo entre cambios de estado de squelch, previniendo alternancia rápida.

**Unidades:** Décimas de segundo

### Efecto

Cuando el squelch cambia de estado (abierto → cerrado o cerrado → abierto), el throttle asegura que no puede ocurrir ningún cambio de estado adicional durante la duración especificada.

### Propósito

Ayuda a evitar ciclos rápidos de squelch en entornos con señales o ruido fluctuantes.

### Ejemplo

```
Squelch Throttle: 5 (0.5 segundos)

Squelch se abre → No puede cambiar estado por 0.5 segundos
Después de 0.5s → Puede cerrarse si condiciones se cumplen
Squelch se cierra → No puede cambiar estado por 0.5 segundos
```

---

## Squelch Tail

**(ALPHA 18a+)**

Determina cuántas verificaciones consecutivas deben confirmar que el squelch debe cerrarse antes de que realmente lo haga.

### Efecto

- Previene que el squelch se cierre demasiado rápido debido a caídas breves de señal
- Proporciona operación más suave requiriendo condiciones consistentes antes de cerrar

### Sobrescritura

Esta configuración es **sobrescrita por Noise Ceiling**, que cerrará el squelch inmediatamente si se excede.

### Ejemplo

```
Squelch Tail: 3

Señal cae por debajo del umbral → Verificación 1
Señal aún baja → Verificación 2
Señal aún baja → Verificación 3
Después de 3 verificaciones consecutivas → Squelch se cierra
```

Si la señal regresa durante las verificaciones, contador se reinicia.

---

## Squelch Tail Elimination (STE)

**(ALPHA 18a+)**

Sistema diseñado para eliminar colas de squelch al final de transmisiones, mejorando claridad y reduciendo ruido.

### Requisitos

**Requiere que ambas partes en comunicación tengan STE activado** para funcionar correctamente.

### Opciones de Configuración

- **RX:** Solo eliminación de tail de lado de recepción
- **TX:** Solo eliminación de tail de lado de transmisión
- **Both:** Eliminación de tail completa (recomendado)

### Uso Típico

Configurar a **Both** es recomendado para la mayoría de aplicaciones para asegurar eliminación de tail completa.

### Nota del Desarrollador

"La respuesta de corte de squelch de nicFW es extremadamente rápida, así que esta configuración solo es útil en entornos muy ruidosos."

---

## Cómo Interactúan las Configuraciones Squelch

### Orden de Prioridad

1. **Noise Ceiling** (prioridad más alta)
   - Cierra instantáneamente squelch si se excede
   - Sobrescribe todas las demás configuraciones

2. **Squelch Throttle**
   - Previene cambios de estado durante período throttle

3. **Noise Trigger + Hysteresis**
   - Ruido debe estar por debajo de trigger menos hysteresis para abrir

4. **Squelch Level + Hysteresis**
   - Señal debe exceder nivel, con buffer de hysteresis

5. **Squelch Tail** (prioridad más baja)
   - Retarda cierre después de que condiciones se cumplen
   - Sobrescrito por Noise Ceiling

### Flujo de Señal

```
¿Ruido Fuerte (> Noise Ceiling)?
  └─ SÍ → Cerrar squelch inmediatamente
  └─ NO → Verificar Throttle
      └─ ¿En período throttle? → Sin cambio
      └─ ¿No en throttle? → Verificar Señal y Ruido
          └─ ¿Señal > Squelch Level?
          └─ ¿Ruido < Noise Trigger?
          └─ Aplicar Hysteresis
          └─ Verificar conteo Squelch Tail
              └─ Abrir o Cerrar squelch
```

---

## Consejos para Ajuste de Squelch

### Punto de Partida (Configuraciones Típicas)

```
Noise Ceiling: Alto (ej., 18-20)
Noise Trigger: Medio (ej., 8-10)
Squelch Level: 3-5 (S2-S4)
Hysteresis: 2-3
Squelch Throttle: 2-5 (0.2-0.5s)
Squelch Tail: 2-3
```

### Para Entornos Ruidosos

```
Noise Ceiling: Más bajo (captura picos de ruido)
Noise Trigger: Más alto (ruido debe estar más silencioso)
Squelch Level: Más alto (necesita señal más fuerte)
Hysteresis: Más alto (más estabilidad)
Usar Noise Gate: Activado
```

### Para Trabajo de Señal Débil

```
Noise Ceiling: Alto (no cortar por ruido)
Noise Trigger: Más bajo (aceptar más ruido)
Squelch Level: Más bajo (S1-S2)
Hysteresis: Más bajo (más responsivo)
Squelch Tail: Más alto (no dejar caer señal débil)
Noise Gate: Activado con ceiling apropiado
```

### Para Operación Móvil

```
Hysteresis: Más alto (compensar desvanecimiento)
Squelch Tail: Más alto (ignorar desvanecimientos breves)
Squelch Throttle: Medio (balance estabilidad/respuesta)
```

---

## Solución de Problemas

### Squelch Se Abre con Ruido

**Síntomas:** Squelch se abre cuando no hay señal presente

**Soluciones:**
- Aumentar Squelch Level
- Aumentar Noise Trigger
- Bajar Noise Ceiling (captura picos de ruido)
- Activar Noise Gate

### Squelch Charlatanea (Apertura/Cierre Rápido)

**Síntomas:** Squelch alterna rápidamente

**Soluciones:**
- Aumentar Hysteresis
- Aumentar Squelch Throttle
- Aumentar Squelch Tail

### Squelch Demasiado Lento para Abrir

**Síntomas:** Pierde inicio de transmisiones

**Soluciones:**
- Disminuir Squelch Throttle
- Disminuir Squelch Tail
- Bajar Squelch Level

### Squelch Corta Durante Señal Débil

**Síntomas:** Audio se cae durante señal débil o con desvanecimiento

**Soluciones:**
- Aumentar Squelch Tail
- Aumentar Hysteresis
- Bajar Squelch Level
- Verificar Noise Ceiling (puede estar demasiado bajo)

### Squelch No Cierra con Ruido Fuerte

**Síntomas:** Ráfagas de ruido pasan a través del squelch

**Soluciones:**
- Bajar Noise Ceiling
- Activar Noise Gate
- Aumentar Noise Trigger

---

## Squelch Override

Cuando squelch override está activo:
- Squelch se fuerza abierto
- Barra de señal muestra **'OV'** en lugar de 'RX' (BETA 05D+)
- Cambiar VFOs cancela override (BETA 05D+)

### Compatibilidad APRS (BETA 05C+)

**No usar squelch override en el VFO configurado para APRS**

Puede causar que los botones laterales dejen de funcionar.

Ver [Guía APRS](../guides/aprs.md) para detalles.

---

## Documentación Relacionada

- [Referencia Menú Advanced](advanced-menu.md) - Configuración Noise Gate
- [Guía APRS](../guides/aprs.md) - Interacciones squelch override
- [Guía Calibración](../guides/calibration.md) - Calibración hysteresis squelch

---

## Historial de Versiones

- **ALPHA 17:** Rango hysteresis squelch extendido a 20, dividido en ExNoise y RSSI
- **ALPHA 18a:** Configuración Squelch Tail introducida, STE añadido
- **BETA 05D:** Indicador squelch override ('OV'), cambiar VFO cancela override
