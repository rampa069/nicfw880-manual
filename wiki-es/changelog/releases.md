# Registro de Versiones Oficiales

Este es el registro principal de cambios para las versiones estables oficiales de nicFW880.

Para versiones de desarrollo, consulta:
- [Versiones BETA](beta-releases.md) - Versiones de prueba en desarrollo
- [Versiones ALPHA](alpha-releases.md) - Versiones de desarrollo temprano

---

## Cómo Leer Este Registro

Cada entrada de versión incluye:
- **Número de versión** y fecha de lanzamiento
- **Características principales** - Nueva funcionalidad añadida
- **Mejoras** - Mejoras a características existentes
- **Correcciones de errores** - Problemas resueltos
- **Problemas conocidos** - Cualquier problema pendiente (si aplica)

---

<!-- Las nuevas versiones se añadirán debajo de esta línea, las más recientes primero -->

## Versión 5.09.02 (9 de diciembre de 2025)

Esta versión sigue a v5.09.01 con cambios en temporización de balizas APRS, mejoras del RMS y correcciones de audio.

**Nota:** Se recomienda un reinicio de configuraciones. Sin un reinicio, las configuraciones nuevas pueden no inicializarse correctamente.

### Novedades de v5.09.02

**Mejoras del Navegador de Balizas**
- Añadidas etiquetas de recordatorio de botones al navegador de Balizas
- Las balizas ahora pueden ser leídas por el RMS y copiadas a Waypoints

**Corrección de Audio**
- Reducido artefacto de audio de fondo cuando el squelch está activado

**Cambios en Temporización de Balizas APRS**
- Añadido 'Menú → APRS → Beacon RX OV' (Beacon RX Override)
  - Permite que balizas programadas interrumpan RX
- **IMPORTANTE:** 'Menú → APRS → Beacon Time' ahora está en **segundos** en lugar de minutos
  - ⚠️ ADVERTENCIA: La configuración existente NO se convierte a segundos
  - Si tu configuración anterior era 2 minutos, ahora será 2 segundos
  - Debes corregir manualmente esta configuración después de actualizar
- Intervalo mínimo de tiempo de baliza APRS reducido a 10 segundos

**Mejoras del RMS**
- Corregidas algunas acciones de exportación CHIRP para modos de tono squelch no estándar
- Añadida una subpágina a la pestaña Scanning que permite leer datos de smart scan
  - Los datos de smart scan pueden usarse para crear canales
  - Nota: Los datos de Smart Scan son volátiles y NO sobreviven a un ciclo de apagado

---

## Versión 5.09.01 (9 de diciembre de 2025)

Esta es una nueva versión mayor con mejoras de GPS, mejoras de APRS y características de calibración.

**Nota:** Se recomienda un reinicio de configuraciones. Sin un reinicio, las configuraciones y características nuevas pueden no inicializarse correctamente.

### Novedades de v5.09.01

**Comportamiento Multi-PTT APRS**
- Cuando Multi-PTT está activo y VFO-B/VFO-C está asignado a APRS, el botón PTT para ese VFO volverá a operar con la función regular asignada

**Formato de Visualización de Coordenadas GPS**
- Añadido 'Dec / DegMin' a Funciones GPS (LP-0)
- Cambia el formato de visualización de coordenadas entre grados decimales y grados/minutos

**Reducción de QRM GPS**
- 'Menú → GPS → Off While TX' cambiado a 'Reduce QRM'
- Ahora permite reducción de QRM del chip GPS durante TX, RX o ambos

**Corrección Tecla S1**
- Intento de corrección para activación espuria de tecla S1 (típicamente asignada a Squelch Override)
- Aborda reportes de usuarios de squelch override espontáneo

**Calibración de Frecuencia por Banda**
- Añadido offset de calibración de frecuencia por banda
- Calibrar cada paso de banda de 50 MHz individualmente con un offset de frecuencia
- Ajustable SOLO en el RMS (no editable desde la radio)
- Nota: El ajuste 'XTAL 671' se aplica DESPUÉS del ajuste por banda

**Mejoras del Historial de Balizas APRS**
- Capacidad del historial de balizas aumentada de 30 a 50
- El historial de balizas ahora funciona como una cola en lugar de una lista rotativa
  - La última baliza recibida siempre se coloca en la posición #1
  - Todo lo demás se desplaza hacia arriba
- El historial de balizas ahora se guarda en almacenamiento flash
  - Las balizas recibidas persisten después de apagar

**Nomenclatura por Lotes de Canales RMS**
- Ahora puedes ingresar un número después de '%' para establecer el inicio de nombres numéricos de canales por lotes
- Ejemplo: Ingresar 'PMR %15' comenzaría el número desde 15 en lugar de 1

---

## Versión 5.08.02C (2 de diciembre de 2025)

Esta versión continúa la serie estable v5.08 con mejoras de APRS, mejoras del scope y actualizaciones del navegador de waypoints GPS.

### Novedades de v5.08.02C

**Protección de VFO APRS**
- El VFO asignado a APRS ahora estará bloqueado contra cambios
  - Para hacer cambios al VFO APRS primero debes desasignarlo
- El VFO asignado a APRS no es seleccionable si multiwatch está habilitado

**Mejoras del Spectrum Scope**
- El scope ahora puede iniciarse en modo canal
  - Al iniciarse, el canal actualmente seleccionado se copia al modo VFO antes de que el scope se inicie

**Actualizaciones del Navegador de Waypoints GPS**
- Cambiada tecla 'Edit Name' de LP-GREEN a LP-0
- Añadido menú de funciones (LP-GREEN) al navegador de Waypoints GPS

### Actualización v5.08.02B

**Mejoras de Escaneo**
- Actualización completa de pantalla después de detener un escaneo
- Añadido "Menú → Scanning → Smart Scan"
  - Aumenta el número de hits durante un escaneo VFO priorizando frecuencias que previamente han tenido actividad
  - Compromiso: Esto ralentizará la velocidad del escaneo secuencial subyacente

### Actualización v5.08.02A

**Corrección de Exclusiones de Escaneo**
- Corregido problema con exclusiones de escaneo no añadiéndose correctamente a la lista

**Cambios de Menú**
- Renombrado 'Menú → Scanning → Ultra Scan' a 'UScan Level'
- Añadido 'Menú → Scanning → UScan Time'
  - Define la cantidad de tiempo en microsegundos que Ultra Scan espera después de cambiar frecuencia antes de verificar el nivel de señal
  - Predeterminado: 1500 (no cambiar a menos que esté dispuesto a experimentar extensivamente)
  - Configurar este valor muy bajo causará que Ultra Scan no detecte nada

**Nueva Característica**
- Añadido 'Menú → Scanning → Scan Return' por solicitud
  - Define qué sucede cuando se detiene un escaneo:
    - **Last Signal** - Configura el VFO a la última frecuencia/canal donde se encontró una señal
    - **Start** - Configura el VFO a la frecuencia o canal de inicio del escaneo
    - **Last Scanned** - Deja el VFO configurado en la frecuencia/canal que se escaneó último

### Actualización v5.08.02

**Mejoras RMS**
- Las Exclusiones de Escaneo ahora son editables desde el RMS

**Cambios de Unidades**
- Unidades de distancia Imperial cambiadas a Pies/Millas

---

## Versión 5.08.01 (7 de noviembre de 2025)

🎉 **Primera Versión Estable Oficial**

Esta es la primera versión lista para producción de nicFW880, consolidando todas las características del extenso ciclo de desarrollo BETA en un firmware estable y probado.

### Novedades de v5.08.01

Esta versión se realizó principalmente para nivelar las cosas fuera de beta, pero incluye varias mejoras de funcionalidad.

**Sistema de Localización Maidenhead**
- Añadido soporte para el sistema de localización por cuadrícula Maidenhead
- Comúnmente usado en radioafición para reportar ubicaciones

**Mejoras en Scrambler**
- Límite superior de frecuencia del scrambler aumentado a 4500 Hz
- Proporciona más opciones de scrambling para comunicaciones seguras

**Mejoras en RMS (Radio Management Software)**
- Nueva pestaña 'Settings' - interfaz de configuración completa (esto fue mucho trabajo)
- Nueva pestaña 'Calibration' - procedimientos de calibración simplificados
- En preparación para el primer lanzamiento mainstream

### Actualización v5.08.01A

**Mejoras de GPS**
- Añadido 'Menú Principal → GPS → Off While TX'
  - Apaga el GPS cuando transmites para ayudar a reducir la interferencia de audio en TX

**Mejoras de Recepción**
- Límite de recepción de Onda Larga reducido a 100 kHz

**Sintonizador FM - Modo de Barrido "Spirit Box"**
- Añadido modo de barrido en sintonizador FM (70-108 MHz)
- LP-0 para iniciar un barrido rápido
- Presiona cualquier tecla durante el barrido rápido para detener

**Actualizaciones de RMS**
- Función de exportación de canales CHIRP .csv

### v5.08.01AA (Actualización de RMS)

**Mejoras de Exportación CHIRP**
- Canales 'N/T' corregidos en exportación
- 'WFM' y 'WAM' ahora exportan correctamente como solo 'FM' y 'AM'
- Añadido diálogo de usuario cuando los canales tienen solo códigos de privacidad de un lado configurados
  - Elegir entre usar modo cruzado o configurar códigos de privacidad TX y RX al mismo

**Correcciones de Pestaña de Configuración**
- Corregido problema de posición decimal en 'APRS Popup Time'

### Actualización v5.08.01B

**Mejoras de Escaneo**
- Mejorada la configuración "Scan TX Too?"
- Corregido problema donde los canales podían guardarse después de escanear en estado invertido

**Opciones de Pantalla**
- Añadido "Menú → Display → Heartbeat Style"
  - Elegir entre parpadear el LED Verde/Rojo o el Teclado

**Gestión de Canales RMS**
- Añadido "Insert" y "Delete" al menú del clic derecho de lista de canales

### Actualización v5.08.01C

**Rendimiento de Escaneo RT-880**
- Mejorada velocidad de escaneo ultra VFO (optimizado para características del chip BK4819)
- El escaneo de canales ahora omite completamente cualquier canal que necesite alternar el relé de banda

**Correcciones de Errores**
- Corregido error del localizador Maidenhead con respecto a longitud/latitud negativa
- Corregido error de navegación GPS con ubicaciones de longitud negativa
  - Muchas gracias a Wayne WA2N por su ayuda para resolver esto

**Nuevas Características**
- Añadido "Menú → Scan → Save Ignores"
  - Permite que las frecuencias excluidas persistan

### Características Principales (del ciclo BETA)

Esta versión incluye toda la funcionalidad desarrollada a través de BETA 01-07C:

**Características de Comunicación:**
- Soporte completo de APRS con mensajería y seguimiento
- Funcionalidad GPS con navegación y waypoints
- Codificación/decodificación DTMF con sistema de presets
- Capacidad Multiwatch
- Funcionalidad de repetidor crossband

**Características Avanzadas:**
- Analizador de espectro (Spectrum Scope)
- Soporte del módulo sintonizador Si4732 (AM/FM/SSB)
- Escaneo configurable con múltiples modos
- Gestión de canales y frecuencias

**Características del Sistema:**
- Estructura de menús completa
- Mapeo de teclas personalizable
- Gestión de energía y monitoreo de batería
- Herramientas de calibración RF

### Notas

- Esta versión se centró principalmente en estabilizar el código BETA
- Todas las características han sido probadas extensivamente
- El software RMS incluye actualizaciones importantes para mejor experiencia de usuario

Para el historial detallado de desarrollo, consulta [Versiones BETA](beta-releases.md) y [Versiones ALPHA](alpha-releases.md).

---

## Acerca de los Números de Versión

**Las versiones oficiales** usan versionado semántico (1.0, 1.1, 2.0, etc.):
- **Versiones mayores** (1.0 → 2.0): Nuevas características significativas o cambios importantes
- **Versiones menores** (1.0 → 1.1): Nuevas características y mejoras
- **Versiones de parche** (1.1.0 → 1.1.1): Correcciones de errores y ajustes menores

**Las versiones de desarrollo** (BETA/ALPHA) no están listas para producción y se usan para probar nuevas características.
