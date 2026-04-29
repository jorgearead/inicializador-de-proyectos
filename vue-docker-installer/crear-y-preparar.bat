@echo off
setlocal enabledelayedexpansion

:: 1. Pedir el nombre del proyecto
set /p nombre="Introduce el nombre de tu nuevo proyecto Vue: "

if "%nombre%"=="" (
    echo [ERROR] El nombre no puede estar vacio.
    pause
    exit
)

:: 2. Ejecutar el generador de Docker
echo.
echo [1/3] Creando proyecto Vue: %nombre%...
docker compose run --rm generator %nombre%

:: 3. Obtener la ruta del .env para copiar el archivo de servidor
:: Leemos la ruta desde el archivo .env (quitando el prefijo RUTA_PROYECTOS=)
for /f "tokens=2 del its==" %%a in ('findstr RUTA_PROYECTOS .env') do set RUTA_FINAL=%%a

:: 4. Copiar el archivo de servidor al nuevo proyecto
echo.
echo [2/3] Configurando servidor de desarrollo en: %RUTA_FINAL%\%nombre%
copy "docker-compose.dev.yml" "%RUTA_FINAL%\%nombre%\docker-compose.yml"

:: 5. Finalizar
echo.
echo [3/3] ¡Todo listo!
echo.
echo Para empezar:
echo 1. ve a: %RUTA_FINAL%\%nombre%
echo 2. ejecuta: docker compose up
echo.
pause