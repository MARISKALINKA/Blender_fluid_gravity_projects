@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

echo ================================================
echo  Blender Fluid Gravity Projects - Auto Generator
echo ================================================
echo.

:: ======== CONFIGURATION ========
set ROOT=C:\blender_fluid_gravity_projects

:: !!! User must set GitHub repo URL here !!!
set REPO_URL=https://github.com/MARISKALINKA/Blender_fluid_gravity_projects.git

:: ======== CREATE ROOT FOLDER ========
echo Creating root folder: %ROOT%
if not exist "%ROOT%" (
    mkdir "%ROOT%"
) else (
    echo Root folder already exists.
)

cd /d "%ROOT%"

:: ======== CLONE GITHUB REPO IF EMPTY ========
if not exist ".git" (
    echo Cloning Git repository into %ROOT%
    git clone %REPO_URL% .
) else (
    echo Git repository already initialized.
)

:: ======== FUNCTION TO CREATE PROJECT STRUCTURE ========
echo Creating subfolders...

for %%P in (
    projectA_fill_tank
    projectB_two_connected_tanks
    projectC_grava_flow_control
) do (

    echo --------------------------------
    echo Creating project: %%P
    echo --------------------------------

    mkdir "%%P\blend"
    mkdir "%%P\cache\fluid"
    mkdir "%%P\cache\mesh"
    mkdir "%%P\renders\animation"
    mkdir "%%P\renders\preview"
    mkdir "%%P\assets\screenshots"
    mkdir "%%P\assets\textures"
    mkdir "%%P\scripts"
    mkdir "%%P\docs"

    :: Create placeholder .blend file
    type nul > "%%P\blend\%%P_placeholder.blend"

    :: Create README.md
    (
        echo # %%P
        echo.
        echo Šis ir projekta READMEs. Aizvieto ar īsto saturu.
        echo.
        echo ## Mapju struktūra
        echo - blend/ — Blender faili
        echo - cache/ — Mantaflow cache
        echo - renders/ — renderi
        echo - assets/ — ekrānšāviņi, video, tekstūras
        echo - scripts/ — Python skripti
        echo - docs/ — dokumentācija
    ) > "%%P\README.md"
)

:: ======== ROOT README ========
(
echo # Blender Fluid Gravity Projects – Template Repository
echo.
echo Šis repozitorijs satur 3 Blender pamata projektus:
echo - Project A: ūdens piepilda trauku caur cauruli
echo - Project B: divi trauki savienoti ar cauruli
echo - Project C: grava ar inflow/outflow
) > README.md

:: ======== ROOT .gitignore ========
(
echo # Blender cache
echo cache/
echo **/cache/
echo **/bake*/
echo.
echo # Blender backups
echo *.blend1
echo *.blend2
echo *.blend@
echo.
echo # Renders
echo renders/
echo *.png
echo *.jpg
echo *.mp4
echo *.mov
echo.
echo # OS junk
echo .DS_Store
echo Thumbs.db
) > .gitignore

:: ======== ROOT .gitattributes ========
echo * text=auto eol=lf > .gitattributes

:: ======== GIT ADD / COMMIT / PUSH ========
echo.
echo Adding files to Git...
git add .

echo.
echo Committing...
git commit -m "Automated project structure generation" 

echo.
echo Pushing to GitHub...
git push

echo.
echo ================================================
echo   ALL DONE! The structure is now on GitHub! 🎉
echo ================================================
pause