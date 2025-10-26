# Instrucciones para Subir a GitHub

Sigue estos pasos para crear el repositorio y subir todo el contenido.

## Paso 1: Crear repositorio en GitHub

1. Ve a https://github.com y haz login
2. Click en el botón **"+"** arriba a la derecha → **"New repository"**
3. Configura el repositorio:
   - **Repository name**: `nicfw880-manual` (o el nombre que prefieras)
   - **Description**: `Manual de usuario completo para nicFW880 - RT-880/RT-880G firmware en inglés y español`
   - **Public** o **Private** (recomiendo Public para que la comunidad pueda acceder)
   - **NO marques** "Add a README file" (ya lo tenemos)
   - **NO marques** "Add .gitignore" (ya lo tenemos)
   - **License**: Opcional - podrías elegir "MIT License" o "Creative Commons"
4. Click **"Create repository"**

## Paso 2: Ejecutar comandos en tu terminal

Abre una terminal y ejecuta estos comandos uno por uno:

```bash
# Navegar al directorio del manual
cd /Volumes/SlowDisk/Radio/RT880/manual

# Inicializar git
git init

# Agregar todos los archivos
git add .

# Ver qué se va a subir (opcional, para verificar)
git status

# Hacer el primer commit
git commit -m "Documentación inicial nicFW880 - Manual completo bilingüe

- Manual completo en inglés (wiki/ - 18 archivos)
- Manual completo en español (wiki-es/ - 18 archivos)
- Posts originales de Patreon (posts_temp/)
- Guías de usuario, referencias y changelog completos
- Cobertura: ALPHA 12-19, BETA 01-05G"

# Conectar con GitHub (REEMPLAZA "TU_USUARIO" con tu nombre de usuario de GitHub)
git remote add origin https://github.com/TU_USUARIO/nicfw880-manual.git

# Renombrar rama a main
git branch -M main

# Subir todo a GitHub
git push -u origin main
```

## Paso 3: Verificar en GitHub

1. Ve a `https://github.com/TU_USUARIO/nicfw880-manual`
2. Deberías ver:
   - El README.md principal con la presentación bilingüe
   - Los directorios `wiki/` y `wiki-es/`
   - El directorio `posts_temp/` con los posts originales
   - Los archivos `ESTADO.md` y `.gitignore`

## Paso 4: Configurar GitHub Pages (Opcional)

Si quieres que el manual sea accesible como página web:

1. En tu repositorio, ve a **Settings**
2. En el menú lateral, click en **Pages**
3. En **Source**, selecciona **"Deploy from a branch"**
4. En **Branch**, selecciona **"main"** y **"/ (root)"**
5. Click **Save**
6. Espera unos minutos y tu manual estará en:
   `https://TU_USUARIO.github.io/nicfw880-manual/`

## Comandos Útiles para el Futuro

### Actualizar el repositorio después de hacer cambios:

```bash
cd /Volumes/SlowDisk/Radio/RT880/manual

# Ver qué archivos cambiaron
git status

# Agregar todos los cambios
git add .

# Hacer commit con descripción del cambio
git commit -m "Descripción de los cambios realizados"

# Subir a GitHub
git push
```

### Ver el historial de cambios:

```bash
git log --oneline
```

### Crear una nueva rama para experimentar:

```bash
git checkout -b nombre-de-rama-experimental
```

## Notas Importantes

- **Usuario de GitHub**: Cuando veas `TU_USUARIO`, reemplázalo con tu nombre de usuario real
- **Autenticación**: GitHub puede pedirte usuario/contraseña o un Personal Access Token
  - Si pide token, créalo en: GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic) → Generate new token
  - Dale permisos de `repo` completo
- **Primera vez**: Si es tu primera vez usando git, puede que necesites configurar:
  ```bash
  git config --global user.name "Tu Nombre"
  git config --global user.email "tu@email.com"
  ```

## Contenido del Repositorio

El repo incluirá:
- ✅ 18 archivos markdown en inglés (wiki/)
- ✅ 18 archivos markdown en español (wiki-es/)
- ✅ Posts originales de Patreon (posts_temp/)
- ✅ README.md principal bilingüe
- ✅ ESTADO.md con tracking del proyecto
- ✅ .gitignore para archivos de sistema

**Total**: ~40 archivos, ~56 archivos markdown

¡Listo para compartir con la comunidad RT-880! 🎉
