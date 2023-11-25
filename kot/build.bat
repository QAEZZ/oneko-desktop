@echo off

if "%1"=="" (
    echo Error: Missing input file name.
    exit /b 1
)

if "%2"=="" (
    set outputFileName=%1
) else (
    set outputFileName=%2
)

if "%outputFileName%"=="" (
    echo Error: Both input and output file names are missing.
    exit /b 1
)

echo Compiling %inputFileName%.cpp, output is %outputFileName%.exe.

@REM actually compile
set inputFileName=%1
g++ -o dist/%outputFileName%.exe %inputFileName%.cpp .\src\glad.c -lopengl32 -lglfw3 -lgdi32 -lglew32

echo Done.
