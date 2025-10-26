# Guía de Funciones de Escaneo

## Descripción General

nicFW880 incluye capacidades integrales de escaneo con soporte para presets de escaneo, exclusión de frecuencias y varios modos de escaneo.

**Scan Presets introducidos:** ALPHA 19
**Velocidad de escaneo mejorada:** BETA 01, BETA 05F/05G
**Últimas actualizaciones:** BETA 05F/05G (escaneo en modo tuner)

## Scan Presets (ALPHA 19+)

Almacena hasta 99 configuraciones de preset de escaneo para acceso rápido a rangos escaneados frecuentemente.

### Activación

**Tecla predeterminada:** LP-1 (puede ser reasignada)

**Requisitos:**
- Al menos un preset debe estar asignado
- Debe estar en modo VFO

### Controles del Menú Scan Preset

- **Up / Down:** Navegar al preset siguiente o anterior
- **0–9:** Saltar a número de preset específico
- **Green:** Iniciar escaneo con preset seleccionado
- **Long-press Green (LP-Green):** Editar nombre de preset

### Gestión de Scan Presets

#### Crear/Guardar Presets

**En la Radio:**
1. Configurar parámetros de escaneo (rango de frecuencia, step, modulation, bandwidth)
2. Main Menu → Scanning → Save
3. Elegir un slot de preset (1-99)

**En RMS:**
- RMS → Scan Presets tab
- Configurar todos los parámetros
- Guardar en slot

#### Eliminar Presets

Main Menu → Scanning → Delete

#### Cargar Presets

Main Menu → Scanning → Load

O usar LP-1 (predeterminado) para abrir Menú Scan Preset

### Configuración de Preset

Cada preset almacena:
- Rango de frecuencia (inicio/fin)
- Tamaño de step
- Modulación
- Ancho de banda (BETA 3C+)

**Corrección BETA 3C:** Modulación y ancho de banda automáticos para presets de escaneo ahora funcionan correctamente.

## Velocidad de Escaneo

### Mejoras

- **BETA 01:** Aumentada velocidad de escaneo
- **BETA 05F:** Velocidad de escaneo en modo tuner mejorada

### Control de Escaneo (BETA 05F+)

En escaneo en modo tuner:
- El escaneo no iniciará hasta que el usuario suelte la tecla LP (LP1 o LP3)
- El escaneo se pausa mientras una tecla está presionada
- Ayuda a evitar desbordamientos al detener escaneos

## Tiempo de Espera de LCD Durante Escaneo (ALPHA 15+)

El LCD ahora tendrá tiempo de espera durante escaneo para ahorrar energía.

**TX despertará el LCD.**

## Exclusión/Ignorar Frecuencia

Omitir temporalmente frecuencias no deseadas durante escaneos.

### Excluir Frecuencias

**Durante escaneo:** Presiona **#** mientras estás en frecuencia no deseada

**En modo monitor de Spectrum Scope (BETA 05G):** Presiona **#** mientras monitores

### Limpiar Ignores

**BETA 05G:** Función "Clear Ignores" añadida al spectrum scope

Limpia todas las frecuencias excluidas/ignoradas.

## Modos de Escaneo

### Escaneo VFO
Escanear entre dos límites de frecuencia en modo VFO.

### Escaneo de Canal
Escanear a través de canales programados.

### Escaneo de Preset (ALPHA 19+)
Usar configuraciones de preset de escaneo guardadas.

## Integración RMS

### Importación CSV CHIRP (ALPHA 19+)

RMS ahora puede cargar CSVs de CHIRP para importación fácil de canales/frecuencias.

### Menú de Clic Derecho (ALPHA 15+)

Añadido menú de clic derecho al tab de canales en RMS para acciones rápidas.

## Scan Presets vs Escaneo Regular

### Usar Scan Presets Cuando:
- Escaneas frecuentemente los mismos rangos de frecuencia
- Necesitas acceso rápido a configuraciones de escaneo configuradas
- Quieres mantener múltiples configuraciones de escaneo

### Usar Escaneo Regular Cuando:
- Escaneo único o ad-hoc
- Probando diferentes parámetros de escaneo
- No necesitas guardar configuración

## Spectrum Scope vs Escáner

⚠️ **Importante:** El Spectrum Scope NO es un escáner.

Para escaneo apropiado de señales, usa las funciones de escaneo (no el spectrum scope).

Ver [Guía Spectrum Scope](spectrum-scope.md) para detalles sobre limitaciones del scope.

## Escaneo en Modo Tuner (BETA 05F+)

El escaneo ahora está disponible en Modo Sintonizador Si4732 con mejoras:

- El escaneo no iniciará hasta que se suelte la tecla LP
- Escaneo pausado mientras tecla está presionada
- Velocidad de escaneo mejorada

**Corrección ALPHA 17a:** Corrección de limpieza de Frecuencia TX para escaneo en modo channel.

## Consejos y Mejores Prácticas

### Optimizar Velocidad de Escaneo

- Usar tamaño de step apropiado (más grande = más rápido, pero puede perder señales)
- Usar presets de escaneo para configuraciones de acceso frecuente
- Excluir frecuencias no deseadas conocidas con #

### Organizar Scan Presets

- Usar presets 1-9 para escaneos más comunes
- Nombrar presets claramente (entrada T9)
- Agrupar escaneos relacionados (ej., 10-19 para HF, 20-29 para VHF)

### Gestión de Energía

- El tiempo de espera de LCD durante escaneo ahorra batería
- Considerar configuraciones de brillo para sesiones de escaneo largas

## Solución de Problemas

### El Menú Scan Preset No Se Abre

**Verificar:**
- Al menos un preset está guardado
- Estás en modo VFO (no en modo channel)
- Tecla de activación correcta (predeterminado LP-1)

### El Escaneo Se Detiene en Frecuencia No Deseada

**Solución:** Presiona # para excluir esa frecuencia del escaneo

### Escaneo Demasiado Rápido/Lento

**Ajustar:**
- Tamaño de paso de frecuencia
- Configuraciones de squelch
- Configuraciones de retardo de escaneo (si disponible en menú)

### Modulación/Ancho de Banda No Funciona (Pre-BETA 3C)

**Corregido en:** BETA 3C - Modulación y ancho de banda automáticos para presets de escaneo

## Historial de Versiones

- **ALPHA 15:** Tiempo de espera de LCD durante escaneo
- **ALPHA 19:** Scan Presets introducidos (hasta 99), importación CSV CHIRP
- **BETA 01:** Aumentada velocidad de escaneo
- **BETA 3C:** Corregida modulación y ancho de banda automáticos para presets de escaneo
- **ALPHA 17a:** Corregida limpieza de frecuencia TX para escaneo en modo channel
- **BETA 05F:** Mejoras en escaneo en modo tuner, mejoras en velocidad
- **BETA 05G:** Exclusión de frecuencia en modo monitor de spectrum scope, función Clear Ignores
