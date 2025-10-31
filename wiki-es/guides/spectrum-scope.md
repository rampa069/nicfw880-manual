# Guía del Analizador de Espectro (Spectrum Scope)

## Descripción General

El Spectrum Scope proporciona representación visual de señales RF a través de un rango de frecuencias. Está disponible tanto en modo radio normal como en modo sintonizador Si4732.

**Primera introducción:** ALPHA 18a (modo radio normal)
**Disponible en tuner:** ALPHA 16+ (modo sintonizador Si4732)
**Últimas actualizaciones:** BETA 05F/05G

## Activación

### Modo Radio Normal
**Tecla predeterminada:** LP-2 (configurable)

### Modo Sintonizador Si4732
**Activación:** LP-# o LP-7 (dependiente de versión)

Ver [Guía Sintonizador Si4732](si4732-tuner.md) para uso específico del scope en tuner.

## Visualización

Cuando se abre, el scope:
- Se centra en tu frecuencia VFO actualmente activa
- Usa tus configuraciones actuales de step, modulation y bandwidth
- Visualización predeterminada: scope de 60 barras de ancho

### Sección de Visualización Superior

Muestra información tipo VFO:
- Frecuencia central actual
- Ancho de banda
- Paso de frecuencia
- Señal más fuerte
- Modulación
- Ancho del scope

## Anchos de Scope

Alternar ancho del scope con **LP-#**

Anchos disponibles:
- 15 barras
- 30 barras
- 60 barras (predeterminado)
- 120 barras

## Controles de Teclas (Modo Radio Normal)

### Teclas de Presión Corta (SP)

- **SP-0 / SP-9:** Introducir nueva frecuencia central
- **SP-RED:** Salir del modo monitor / Salir del scope
- **SP-#:** Centrar scope en señal más fuerte
- **SP-Up / SP-Down:** Desplazar frecuencia central por paso actual
- **SP-S1:** Monitorear frecuencia central
- **SP-S2:** Monitorear frecuencia de señal más fuerte

### Teclas de Presión Larga (LP)

- **LP-#:** Alternar ancho del scope (15/30/60/120 barras)
- **LP-\*:** Introducir nuevo paso de frecuencia

### Controles Adicionales BETA 05F+

- **LP-GREEN:** Abrir menú de funciones del scope
- **LP-0 a 9:** Establecer nivel de trigger de monitoreo (LP-0 = Deshabilitar)
- **LP-S1:** Modulación FM
- **LP-S2:** Modulación AM
- **LP-EMG:** Modulación DSB

## Menú de Funciones (BETA 05F+)

**Acceso:** LP-GREEN

El scope ahora tiene su propio menú de funciones proporcionando acceso rápido a:
- Selección de modulación (FM, AM, DSB)
- Configuración de trigger de monitoreo (BETA 06: Set/Clear Trigger)
- Set Ignore (SP #) (BETA 06)
- Limpiar ignores
- Freq → VFO (PTT) (BETA 06)
- Otras funciones del scope

También seleccionable via menú de funciones.

## Trigger de Monitoreo (BETA 05F+)

Monitorea automáticamente señales por encima de cierto nivel.

**Nota:** Un escaneo regular sigue siendo la mejor herramienta para esto, pero el trigger se proporciona para completitud.

### Establecer Nivel de Trigger

**Control:** LP 0-9

- **LP-0:** Deshabilitar trigger
- **LP-1 a 9:** Establecer nivel de trigger (1 = más bajo, 9 = más alto)

**Indicador visual:** Aparece línea azul en el scope mostrando nivel de trigger

### Función Set Trigger (BETA 06B+)

**Acceso:** Via Menú de Funciones (LP-GREEN) → Set Trigger

**Comportamiento:**
- Si no hay trigger configurado: Establece trigger en nivel 6
- Si ya hay un trigger configurado: Limpia el trigger

Esto proporciona un toggle rápido para habilitar/deshabilitar el trigger sin navegar por configuraciones de nivel.

### Salir del Modo Monitor (BETA 05G+)

Presiona **PTT** para salir del scope durante monitoreo y permanecer en la frecuencia monitoreada.

## Selección de Modulación (BETA 05F+)

Cambiar modulación directamente desde el scope:

- **LP-S1:** FM
- **LP-S2:** AM
- **LP-EMG:** DSB (Double Sideband)

También seleccionable via menú de funciones.

**Corrección BETA 05G:** Los cambios de modulación en el scope ya no "persisten" después de salir del scope.

## Exclusión/Ignorar Frecuencia

### Actualizaciones BETA 05G

**En modo monitor:** Presiona **#** mientras monitores para excluir/ignorar frecuencia

Funciona igual que cuando se escanea.

### Actualizaciones BETA 06B

**Set Ignore (SP #):** Nueva opción en menú de funciones para ignorar/excluir frecuencias
- Accesible vía Menú de Funciones (LP-GREEN)
- Método alternativo a presionar # durante monitoreo

**Freq → VFO (PTT):** Copiar frecuencia actual al VFO activo
- Accesible vía Menú de Funciones (LP-GREEN)
- Presiona PTT para transferir frecuencia del scope al VFO
- Útil para guardar rápidamente frecuencias interesantes

### Limpiar Ignores (BETA 05G)

Función de tecla "Clear Ignores" añadida al scope (accesible via menú de funciones).

Limpia todas las frecuencias excluidas/ignoradas.

## Acceso al Main Menu (BETA 05F+)

El Main Menu ahora se puede acceder durante operación del Scope.

Presiona **SP-GREEN** mientras estás en el scope.

## Scope en Modo Channel (BETA 05G+)

Se previene que el scope inicie cuando está en modos basados en canales (solo funciona en modo VFO).

## Persistencia de Configuraciones (BETA 05G)

Corregido problema de configuraciones del scope reiniciándose después de cerrar menús.

Las configuraciones del scope ahora se retienen apropiadamente.

## Limitaciones Importantes

### ⚠️ EL SPECTRUM SCOPE NO ES UN ESCÁNER

**Comprensión Crítica:**

La radio es **INCAPAZ** de escuchar una señal y escanear otras al mismo tiempo.

El scope **NO PUEDE** continuar dibujando mientras escucha una señal.

El scope tiene que **DETENERSE** para escuchar una señal.

**¿Por qué no auto-detenerse en señales?**

Si se detuviera automáticamente en cada señal, actuaría como un simple escáner - uno lento con rango limitado. El scope sería completamente inútil ya que solo podría mostrar una señal detectada; todo lo demás sería ruido, lo cual derrota su propósito.

**!!SI QUIERES ESCANEAR, EJECUTA UN ESCANEO REGULAR!!**

Ver [Guía de Escaneo](scanning.md) para funcionalidad apropiada de escaneo.

## Casos de Uso

### Visualización de Señales
Ver actividad RF a través de un rango de frecuencias sin detenerse.

### Encontrar Señal Más Fuerte
Identificar rápidamente la señal más fuerte en un rango:
1. Abrir scope
2. Presionar SP-# para centrar en señal más fuerte
3. Presionar SP-S2 para monitorear señal más fuerte

### Análisis de Banda
Examinar actividad a través de una banda:
1. Configurar ancho de scope apropiado (LP-#)
2. Ajustar frecuencia central según necesites (SP-Up/Down)
3. Usar paso de frecuencia apropiado (LP-\*)

### Monitoreo Manual
Usar trigger de monitoreo para detección de señal semi-automatizada:
1. Establecer nivel de trigger (LP 0-9)
2. Línea azul muestra umbral de trigger
3. Señales por encima del umbral pueden ser monitoreadas
4. Presiona PTT para permanecer en frecuencia (BETA 05G+)

## Consejos y Mejores Prácticas

### Elegir Ancho de Scope
- **15/30 barras:** Enfoque estrecho, vista detallada
- **60 barras:** Buen balance (predeterminado)
- **120 barras:** Vista general amplia

### Paso de Frecuencia
- Pasos más pequeños: Barrido más detallado, más lento
- Pasos más grandes: Barrido más rápido, menos detalle
- Ajustar con LP-\* basándose en tus necesidades

### Selección de Modulación
Elegir modulación apropiada para la banda:
- VHF/UHF: Usualmente FM
- HF/SW: Usualmente AM o SSB
- Experimentar con DSB para ciertas señales

## Solución de Problemas

### El Scope No Inicia
**BETA 05G+:** No se puede iniciar scope en modos basados en canales. Cambiar a modo VFO.

### Las Configuraciones Se Siguen Reiniciando
**Corregido en:** BETA 05G

### Los Cambios de Modulación Persisten Después de Salir
**Corregido en:** BETA 05G

### No Puedo Acceder al Menú en Scope
**Solución:** Usar SP-GREEN (disponible BETA 05F+)

## Scope del Sintonizador Si4732

El scope también está disponible en Modo Sintonizador Si4732 con algunas diferencias:

**Requisitos (BETA 02+):**
- Frecuencia >18 MHz
- Dual antennas requeridas

Ver [Guía Sintonizador Si4732](si4732-tuner.md) para controles específicos del tuner.

## Historial de Versiones

- **ALPHA 16:** Scope en modo sintonizador Si4732
- **ALPHA 18a:** Spectrum Scope en modo radio normal introducido
- **BETA 05F:** Menú de funciones, trigger de monitoreo, selección de modulación, acceso a main menu
- **BETA 05G:** Ignorar frecuencia en modo monitor, salida PTT, limpiar ignores, correcciones
