# Guía de Multiwatch

## Descripción General

Multiwatch permite monitorear múltiples VFOs simultáneamente, cambiando automáticamente al VFO que recibe una señal.

**Mejorado:** ALPHA 15, BETA 03, BETA 05F
**Últimas actualizaciones:** BETA 05F (soporte VFO mixto)

## Cómo Funciona Multiwatch

La radio monitorea todos los VFOs configurados y cambia automáticamente al VFO que recibe una señal.

## Multiwatch VFO Switch (ALPHA 15+)

Determina el comportamiento después de que se pierde la señal.

**Opciones:**
- **Permanecer en VFO detectado:** Permanecer en el VFO que recibió la señal
- **Cambiar de vuelta:** Volver al VFO original después de pérdida de señal

**Configuración:** Verificar main menu para configuraciones Multiwatch

## MW Pause

Duración de pausa configurable antes de reanudar multiwatch después de una recepción.

Usado en:
- Operación regular de multiwatch
- Monitor HT en Modo Sintonizador Si4732 (BETA 03+)

## Soporte VFO Mixto (BETA 05F)

### Limitación Anterior

Mezclar VFOs HF y no-HF en Multiwatch no estaba permitido porque:
- Causaba conmutación rápida del relé de conmutación de banda HF
- Ruido molesto
- Desgaste extra del relé

### Actualización BETA 05F

**¡Ahora soportado!**

El relé de conmutación de banda HF se suprime durante verificaciones Multiwatch:
- El VFO activo es dominante para estado del relé
- Se pueden usar VFOs mixtos
- Los VFOs que requerirían activar el relé se omiten durante verificaciones

**Ejemplo:**
- VFO A: Frecuencia HF (ej., 7.100 MHz)
- VFO B: Frecuencia VHF (ej., 146.520 MHz)
- VFO C: Frecuencia UHF (ej., 446.000 MHz)

Los tres ahora pueden ser monitoreados simultáneamente sin problemas de relé.

## Monitor HT en Modo Sintonizador Si4732 (BETA 03+)

Si Multiwatch está activado y configurado correctamente:

### Requisitos:
- Los VFOs no mezclan frecuencias HF y VHF/UHF
- Scope está desactivado en modo tuner

### Comportamiento:
- Cualquier señal recibida en uno de los tres VFOs interrumpe temporalmente el tuner
- Cambia de vuelta a modo HT para recibir la señal
- Después del **MW Pause** configurado, el modo Si4732 se reanuda automáticamente

Esto permite monitorear tus frecuencias regulares mientras usas el tuner.

## Configuración

### Activar Multiwatch

Verificar Main Menu para configuraciones Multiwatch (ruta exacta puede variar por versión).

### Configuraciones Multiwatch

- **VFO Switch:** Permanecer vs Cambiar de vuelta
- **MW Pause:** Duración antes de reanudar multiwatch
- Otros parámetros multiwatch

## Configuración VFO para Multiwatch

### Mejores Prácticas:

1. **Configurar todos los VFOs que quieres monitorear:**
   - VFO A: Tu frecuencia primaria
   - VFO B: Frecuencia secundaria
   - VFO C: Frecuencia terciaria

2. **Configurar squelch apropiado:**
   - Demasiado ajustado: Puede perder señales débiles
   - Demasiado suelto: Disparos falsos

3. **Bandas mixtas (BETA 05F+):**
   - Ahora puede mezclar HF y VHF/UHF
   - VFOs que requieren conmutación de relé se omiten durante verificaciones

## Multiwatch vs Escaneo

### Usar Multiwatch cuando:
- Monitorizando frecuencias específicas (hasta 3 VFOs)
- Necesitas respuesta inmediata a actividad
- Quieres permanecer en la frecuencia activa

### Usar Escaneo cuando:
- Monitorizando muchas frecuencias
- Buscando actividad a través de una banda
- Usando presets de escaneo para monitoreo organizado

Ver [Guía de Escaneo](scanning.md) para características de escaneo.

## Compatibilidad con Otras Características

### Módulo GPS (BETA 04+)

RX/TX rudimentario mientras módulo GPS está activo:
- Usa cualquier VFO que estaba activo cuando se inició el módulo GPS
- Sin Multiwatch en modo GPS

### Modo Sintonizador Si4732 (BETA 03+)

Integración Monitor HT permite que multiwatch interrumpa tuner para actividad VFO.

### APRS (BETA 05C+)

**Consideraciones importantes:**
- Corrección para botones laterales deteniéndose cuando squelch abierto mientras decodificación APRS activa
- Requiere Main Menu → APRS → Use VFO configurado
- No usar squelch override en VFO asignado a APRS

**Actualización BETA 06 - Exclusión de VFO:**
Si la decodificación APRS está deshabilitada pero se asigna un VFO APRS (vía Main Menu → APRS → Use VFO), ese VFO será automáticamente excluido del multiwatch. Esto previene conflictos y asegura operación apropiada.

Ver [Guía APRS](aprs.md) para más detalles.

## Solución de Problemas

### Multiwatch No Cambia

**Verificar:**
- Multiwatch está activado
- Configuraciones de squelch en todos los VFOs
- Frecuencias VFO son válidas y están configuradas

### Ruido de Clic del Relé (Pre-BETA 05F)

Si mezclas VFOs HF y VHF/UHF:
- **Solución:** Actualizar a BETA 05F+ para soporte VFO mixto
- **Solución alternativa:** Mantener todos los VFOs en mismo grupo de banda (todos HF o todos VHF/UHF)

### No Puede Monitorear Cierto VFO

**BETA 05F+:** VFOs que requieren activación de relé HF pueden ser omitidos durante verificaciones multiwatch. Este es comportamiento normal para prevenir desgaste del relé.

### Tuner Interrumpido Muy Seguido

**Ajustar:**
- Duración MW Pause (pausa más larga = menos interrupción)
- Squelch en VFOs (squelch más ajustado = menos disparos)
- Considerar deshabilitar Multiwatch cuando uso de tuner es primario

## Consejos y Mejores Prácticas

### Optimizar Multiwatch

1. **Configurar MW Pause apropiado:**
   - Demasiado corto: Conmutación constante
   - Demasiado largo: Retorno retardado a monitoreo

2. **Balancear prioridades VFO:**
   - Colocar frecuencia más importante en VFO A
   - Configurar comportamiento VFO switch según corresponda

3. **Usar con Sintonizador Si4732:**
   - Excelente para monitorear mientras escuchas transmisiones
   - Ajustar MW Pause para balancear entre tuner y HT

### Gestión de Energía

Multiwatch consume más energía debido al monitoreo constante. Considerar:
- Capacidad de batería para operación extendida
- Deshabilitar cuando no se necesita

## Historial de Versiones

- **ALPHA 15:** Configuración Multiwatch VFO Switch
- **BETA 03:** Integración Monitor HT con Sintonizador Si4732
- **BETA 05C:** Correcciones de compatibilidad APRS
- **BETA 05F:** Soporte VFO mixto (HF + VHF/UHF)
