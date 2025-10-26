# Guía de Repetidor Crossband

## Descripción General

El modo Crossband Repeater permite que tu radio retransmita señales entre bandas VHF y UHF, funcionando efectivamente como un repetidor portátil.

**Introducido:** ALPHA 13
**Activación:** Long-press EMG

## ¿Qué es Crossband Repeater?

En modo Crossband Repeater (XB Repeater), la radio monitorea simultáneamente dos frecuencias en diferentes bandas (una VHF, una UHF) y retransmite señales recibidas en la banda opuesta.

### Casos de Uso

- Extender rango entre radios portátiles
- Conectar comunicaciones VHF y UHF
- Retransmisión móvil-a-portátil
- Respaldo de comunicaciones de emergencia

## Requisitos de Configuración

Antes de activar Crossband Repeater, asegúrate de que se cumplan todos los requisitos:

### 1. Configuración VFO
- **VFO-A y VFO-B deben estar en modo simplex**
  - Sin offset TX/RX
  - No configurados para operación repetidor

### 2. Permiso de Transmisión
- **Ambos VFOs deben tener permitido transmitir**
  - Verificar configuraciones de permiso TX para cada VFO

### 3. Configuración de Banda
- **Un VFO en VHF, el otro en UHF**
  - Ejemplo: VFO-A = 146.520 MHz (VHF), VFO-B = 446.000 MHz (UHF)
  - No funcionará con ambos VFOs en la misma banda

### 4. Configuraciones de Squelch
- **Squelch debe estar cerrado**
  - Configurar nivel de squelch apropiado para evitar disparo falso
  - Demasiado suelto = disparo constante
  - Demasiado ajustado = señales débiles no dispararán

## Activación

**Tecla:** Long-press **EMG**

La radio entra en modo Crossband Repeater y comienza a monitorear ambos VFOs.

## Operación

### Cómo Funciona

1. La radio monitorea simultáneamente VFO-A y VFO-B
2. Cuando se recibe señal en VFO-A:
   - La radio retransmite en VFO-B
3. Cuando se recibe señal en VFO-B:
   - La radio retransmite en VFO-A
4. El proceso continúa hasta que sales del modo XB Repeater

### Controles Mientras Se Ejecuta

- **Presionar RED:** Salir del modo XB Repeater (volver a operación normal)
- **Presionar STAR (\*):** Alternar pantalla encendida/apagada (ahorrar energía)

## Ejemplo de Configuración

### Retransmisión VHF a UHF

**VFO-A (VHF):** 146.520 MHz (simplex)
**VFO-B (UHF):** 446.000 MHz (simplex)

- Portátil #1 transmite en 146.520 MHz (VHF)
- Radio recibe en VFO-A y retransmite en 446.000 MHz (UHF)
- Portátil #2 recibe en 446.000 MHz (UHF)

Y viceversa para la dirección opuesta.

### Móvil a Portátil

**Escenario:** Extender rango de móvil a portátil

**VFO-A (VHF):** 146.520 MHz - para radio móvil
**VFO-B (UHF):** 446.000 MHz - para portátil

- Colocar radio XB repeater en ubicación alta
- Móvil comunica en VHF
- Portátil comunica en UHF
- Radio XB conecta los dos

## Consideraciones de Energía

### Vida de Batería

La operación crossband repeater consume energía significativa porque:
- Monitoreo continuo de dos frecuencias
- Transmisiones frecuentes
- Sin modo de ahorro de energía sleep

**Recomendaciones:**
- Usar con energía externa cuando sea posible
- Monitorear nivel de batería
- Alternar pantalla apagada con STAR para ahorrar algo de energía

### Gestión de Calor

La operación crossband extendida puede generar calor:
- Asegurar ventilación adecuada
- Evitar transmisiones continuas extendidas
- Monitorear temperatura de radio

## Consejos y Mejores Prácticas

### 1. Consideraciones de Antena

**Mejor configuración:**
- Antena dual-band O
- Antenas VHF y UHF separadas

**Por qué:** Mejor aislamiento entre bandas reduce interferencia.

### 2. Selección de Frecuencia

- Usar frecuencias simplex apropiadas para tu licencia
- Evitar interferir con repetidores existentes o nets
- Elegir frecuencias claras para minimizar disparos falsos

### 3. Configuración de Squelch

- Configurar squelch suficientemente ajustado para evitar disparo de ruido
- Pero suficientemente suelto para captar señales débiles
- Probar antes de desplegar

### 4. Ubicación

Para efectividad máxima:
- Colocar radio XB repeater en ubicación alta y central
- Buena línea de visión a ambos extremos
- Lejos de fuentes de ruido RF

### 5. Privacidad/Señalización

Considerar usar:
- Tonos CTCSS/DCS en ambos VFOs
- Previene disparo de señales no intencionales
- Proporciona algo de privacidad

## Solución de Problemas

### XB Repeater No Inicia

**Verificar todos los requisitos:**
1. ✓ ¿VFO-A y VFO-B en modo simplex?
2. ✓ ¿Ambos VFOs tienen permitido transmitir?
3. ✓ ¿Un VFO en VHF, otro en UHF?
4. ✓ ¿Squelch cerrado (no abierto)?

**Si falla un requisito, modo XB no se activará.**

### Disparo/Looping Constante

**Causas posibles:**
- Squelch demasiado suelto (captando ruido)
- Retroalimentación entre antenas (demasiado cerca)
- Señal fuerte cercana

**Soluciones:**
- Ajustar squelch
- Mejorar aislamiento de antena
- Verificar fuentes de interferencia

### Retransmisión Débil o Nula

**Verificar:**
- Configuraciones de potencia TX en ambos VFOs
- Conexiones de antena
- Nivel de batería (batería baja = potencia baja)

### Una Dirección Funciona, Otra No

**Verificar:**
- Permiso TX en ambos VFOs
- Configuración de squelch en el VFO que no funciona
- Rendimiento de antena en ambas bandas

## Consideraciones Legales y de Seguridad

### Licencia

Asegúrate de tener licencia apropiada para:
- Frecuencias usadas
- Niveles de potencia
- Modo de operación

La operación crossband repeater puede tener regulaciones específicas en tu jurisdicción.

### Interferencia

- No interferir con comunicaciones existentes
- Monitorear antes de activar
- Estar preparado para apagar si causa interferencia

### Identificación

Dependiendo de regulaciones, puede que necesites:
- Identificar periódicamente la estación de retransmisión
- Usar ID de estación en ambas frecuencias

## Limitaciones

### No es un Repetidor Completo

Crossband repeater es más simple que un repetidor completo:
- Sin duplexor (usa dos bandas diferentes en su lugar)
- Sin tonos de cortesía (típicamente)
- Sin temporizador de tiempo de espera (usar responsablemente)
- Activación/desactivación manual

### Señales Simultáneas

No puede retransmitir dos transmisiones simultáneas:
- Si ambas bandas reciben señal a la vez, comportamiento indefinido
- Usuarios deben seguir procedimientos simplex normales (uno a la vez)

## Comparación con Otras Características

### Crossband Repeater vs Multiwatch

**Multiwatch:**
- Solo monitorea y recibe
- Cambia entre VFOs
- Sin retransmisión

**Crossband Repeater:**
- Monitorea y retransmite
- Retransmite activamente entre bandas
- Operación tipo full duplex

Ver [Guía Multiwatch](multiwatch.md) para detalles sobre monitoreo.

## Historial de Versiones

- **ALPHA 13:** Crossband Repeater introducido

## Ahorro de Energía de Pantalla

**Alternar pantalla:** Presionar STAR (\*)

Apagar pantalla durante operación:
- Ahorra energía de batería
- Reduce calor
- Operación continúa normalmente

Presionar STAR nuevamente para encender pantalla de vuelta.
