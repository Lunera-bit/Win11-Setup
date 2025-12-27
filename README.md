# Configuración de Windows (personal)

Este repositorio contiene archivos de configuración y utilidades para mi entorno Windows.

## Tabla de contenido

- [Estructura y propósito](#estructura-y-propósito)
- [Notas rápidas](#notas-rápidas)
- [¿Qué hice aquí?](#qué-hice-aquí)
- [Recursos y referencias](#recursos-y-referencias)
- [Siguientes pasos sugeridos](#siguientes-pasos-sugeridos)
- [Licencia](#licencia)

## Estructura y propósito

- **FastFetch/**: herramienta rápida para mostrar información del sistema.
  - `ascii.txt`: arte ASCII usado por FastFetch.
  - `config.jsonc`: configuración de FastFetch.

- **File Explorer/**: configuraciones relacionadas con el explorador de archivos.
  - `config.ini`: ajustes personalizados del explorador.

- **GlazeWM/**: archivos de configuración para el gestor de ventanas o temas relacionados.
  - `config.yaml`: parámetros y temas.

- **PowerShell_7/**: perfil y scripts de PowerShell.
  - `Microsoft.PowerShell_profile.ps1`: perfil de inicio de PowerShell (alias, funciones, carga de módulos).

- **YASB/**: configuraciones y estilos para alguna herramienta o script.
  - `config.yaml`: configuración principal.
  - `styles.css`: estilos asociados.

## Notas rápidas

- Edita configuraciones con tu editor preferido y prueba cambios en una copia antes de sobrescribir producción.
- Para recargar el perfil de PowerShell después de editar `Microsoft.PowerShell_profile.ps1`, ejecuta:

```powershell
& "$PSScriptRoot\Microsoft.PowerShell_profile.ps1"
```

- Para FastFetch, revisa `FastFetch/config.jsonc` antes de ejecutar la utilidad.

## ¿Qué hice aquí?

- Añadí este `README.md` para documentar de forma breve las carpetas y los archivos principales.

## Recursos y referencias

### PowerShell
- **Tutorial PowerShell**: https://www.youtube.com/watch?v=d87kcqnvsc0
- **Video de PowerShell**: https://youtu.be/z3NpVq-y6jU?si=HyE6jUqvjEER1wef

### Explorador de archivos
- **ExplorerBlurMica** (explorador transparente): https://github.com/Maplespe/ExplorerBlurMica/releases/tag/1.0.6

## Siguientes pasos sugeridos

- Hacer commit de este README si lo deseas.
- Añadir ejemplos de comandos o scripts para aplicar las configuraciones automáticamente.
- Expandir documentación de cada carpeta con ejemplos específicos.

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
