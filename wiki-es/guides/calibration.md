# Guía de Calibración y Configuración

## Descripción General

nicFW880 proporciona opciones de calibración para voltaje de batería y salida de potencia para garantizar lecturas precisas y rendimiento óptimo.

## Calibración de Batería

La calibración adecuada de la batería asegura una visualización precisa del nivel de batería y advertencias confiables de batería baja.

### Cuándo Calibrar

- Después de la primera instalación del firmware
- Después del reemplazo de la batería
- Si las lecturas de batería parecen inexactas

### Proceso de Calibración

#### Paso 1: Calibración de Carga Completa

1. Carga la batería **COMPLETAMENTE** (hasta que el cargador indique que está completa)
2. Abre el Main Menu
3. Selecciona **'Calibration'**
4. Ajusta **'Batt V Cal'** hasta que la lectura en el área Extra Info muestre **'8.4V'**
5. Ajusta **'Batt Full'** al mismo valor ADC que se muestra en el área Extra Info

#### Paso 2: Calibración de Descarga/Vacío

1. Permite que la batería se descargue hasta lo que consideres casi vacío
   - Recomendación: No dejes que baje de 6.0V
   - Puedes establecer tu propio umbral mínimo
2. Abre el Main Menu
3. Selecciona **'Calibration'**
4. Ajusta **'Batt Flat'** al mismo valor ADC que se muestra en el área Extra Info

### Información de Voltaje de Batería

#### Distinción Importante de Voltaje

**Voltaje nominal** vs **Voltaje completamente cargado** son diferentes:
- Voltaje nominal de batería: **7.4V** (lo que está impreso en la batería)
- Voltaje completamente cargado: **8.4V** (voltaje real cuando está completamente cargada)

#### Guía de Referencia de Voltaje

- **8.4V:** Completamente cargada
- **7.4V:** Voltaje nominal (clasificación de batería)
- **6.0V:** Típicamente considerada descargada

⚠️ **Nota:** "Podrías querer subir el límite inferior, ¡todo esto depende de ti, NO DE MÍ!" - nicsure

El voltaje de descarga de 6.0V es una guía. Puedes querer establecer un umbral más alto (ej., 6.5V o 7.0V) para evitar sobre-descarga y extender la vida de la batería.

## Calibración de Radiofrecuencia (XTAL671)

Ajusta finamente el oscilador de cristal para transmisión y recepción de frecuencia precisa.

### Cuándo Calibrar

- Después de la instalación del firmware si las frecuencias parecen incorrectas
- Si notas deriva de frecuencia
- Para trabajo de precisión (acceso a repetidor, modos digitales)

### Equipo Necesario

- Dos radios (una para calibrar, una como referencia)
- O: Una radio + contador de frecuencia/monitor de servicio

### Proceso de Calibración

#### Paso 1: Elegir Frecuencia de Calibración

Elige una frecuencia para calibrar, **cuanto más alta mejor**.

**Ejemplo:** 433 MHz

**Consejo:** Usualmente es mejor elegir un valor de MHz redondo para mantener las matemáticas simples (ej., 433.000 en lugar de 433.125).

#### Paso 2: Configurar Ambas Radios

1. Sintoniza ambas radios a la misma frecuencia usando **modo VFO**
2. **En la radio a ajustar:**
   - Configura un tono de squelch RX
   - Configura el step a **0.1** (100 Hz)
3. **En la radio transmisora:**
   - Configura el mismo tono de squelch TX

#### Paso 3: Encontrar Límites de Frecuencia

Encuentra el límite de frecuencia superior e inferior donde el squelch se abrirá correctamente.

**Ejemplo:** 433.00040 a 433.00210

Usa el step de 0.1 kHz para ajustar finamente y encontrar los límites exactos.

#### Paso 4: Calcular Punto Medio

Calcula el punto medio entre estas dos frecuencias.

**Fórmula:** (Límite Inferior + Límite Superior) / 2

**Ejemplo:** (433.00040 + 433.00210) / 2 = 433.00125

#### Paso 5: Calcular Diferencia

Toma la diferencia entre el punto medio y la frecuencia de calibración.

**Fórmula:** Punto Medio - Frecuencia de Calibración

**Ejemplo:** 433.00125 - 433.00000 = +0.00125 MHz = +125 Hz

**Nota:** El resultado puede ser positivo (+) o negativo (-).

#### Paso 6: Multiplicar por 671

Multiplica la diferencia por 671.

**Fórmula:** Diferencia × 671

**Ejemplo:** +125 × 671 = +83,875

#### Paso 7: Dividir por Frecuencia de Calibración

Divide el resultado por la frecuencia de calibración (en MHz).

**Fórmula:** Resultado / Frecuencia de Calibración (MHz)

**Ejemplo:** +83,875 / 433 = +193 (redondeado)

#### Paso 8: Introducir Valor de Calibración

Este es tu factor correcto para introducir en **Calibration → XTAL671**

**Ruta:** Main Menu → Calibration → XTAL671

Introduce el valor calculado (+193 en nuestro ejemplo).

### Ejemplo Resumen de Calibración

```
Frecuencia de Calibración: 433.000 MHz
Squelch Abre: 433.00040 a 433.00210 MHz
Punto Medio: 433.00125 MHz
Diferencia: +125 Hz (+0.00125 MHz)
Cálculo: (+125 × 671) / 433 = +193

Introduce +193 en Calibration → XTAL671
```

### Verificación

Después de introducir el valor de calibración:
1. Vuelve a probar el rango de apertura de squelch
2. Ahora debería estar centrado alrededor de la frecuencia de calibración
3. Ajusta finamente si es necesario

### Consejos para Calibración Precisa

1. **Usa frecuencias más altas:**
   - Los errores son más pronunciados en frecuencias más altas
   - Más fácil de medir con precisión
   - UHF (400+ MHz) es mejor que VHF (140+ MHz)

2. **Usa valores de MHz redondos:**
   - Simplifica los cálculos
   - Ejemplos: 433.000, 146.000, 440.000

3. **Transmisor estable:**
   - Usa una radio de referencia de calidad
   - O mejor: Usa un monitor de servicio o contador de frecuencia

4. **Mediciones múltiples:**
   - Prueba en diferentes frecuencias
   - Promedia los resultados para mejor precisión

5. **Documenta tu valor:**
   - Anota el valor XTAL671
   - Facilita la restauración después de reinicios

## Calibración de Potencia (ALPHA 15+)

Ajusta finamente la configuración de salida de potencia RF para tu radio específica.

### Calibración Predeterminada

Una configuración de calibración predeterminada está presente al iniciar el RMS, basada en la radio del desarrollador.

Puede que necesites ajustar finamente para tu propia radio.

### Proceso de Calibración

Usa el firmware de diagnóstico para experimentar y descubrir configuraciones de potencia óptimas:
- Configuraciones de Bias
- Configuraciones de Gain

**Referencia:** https://www.patreon.com/posts/133266503?collection=1570664

## Otras Configuraciones de Calibración

### Calibración de Squelch (ALPHA 17+)

Configuraciones de **Squelch hysteresis**:
- Dividido en configuraciones ExNoise y RSSI
- Límites de rango extendidos a 20

Ver Main Menu → Squelch para opciones.

### Stepping de 8.33 kHz (BETA 3B+)

Stepping de 8.33 kHz calibrado corregido para uso en banda de aviación.

## Solución de Problemas

### La Lectura de Batería Muestra Voltaje Incorrecto

**Soluciones:**
1. Recalibra Batt V Cal
2. Verifica que la batería esté realmente completamente cargada (8.4V con multímetro)
3. Verifica conexiones de batería

### El Icono de Batería No Coincide con el Nivel de Carga Real

**Soluciones:**
1. Recalibra Batt Full y Batt Flat
2. Asegúrate de que la calibración se hizo en los estados de carga apropiados
3. La batería puede estar envejeciendo (capacidad disminuida)

### Salida de Potencia Demasiado Baja/Alta

**Soluciones:**
1. Recalibra configuraciones de potencia usando firmware de diagnóstico
2. Verifica SWR de antena
3. Verifica que no esté en modo de baja potencia

## Icono de Carga (ALPHA 19+)

Icono de carga añadido para mostrar cuando la batería está cargando.

Ayuda a confirmar que la carga está activa y proporciona retroalimentación visual.

## Reiniciar a Valores Predeterminados

Si la calibración sale mal:
1. Mantén **EMG** mientras enciendes (realiza reinicio de configuraciones)
2. Espera el mensaje "DEFAULT SETTINGS"
3. Espera a que desaparezca el triángulo rojo
4. Recalibra desde cero

⚠️ **Nota:** El reinicio de configuraciones restaurará valores de calibración predeterminados y reiniciará todas las configuraciones.

## Historial de Versiones

- **ALPHA 15:** Calibración de Potencia introducida
- **ALPHA 17:** Mejoras en calibración de histéresis de squelch
- **BETA 3B:** Stepping de 8.33 kHz corregido
- **ALPHA 19:** Icono de carga añadido
- **Todas las versiones:** Calibración de batería disponible
