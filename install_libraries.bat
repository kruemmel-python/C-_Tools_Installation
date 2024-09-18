@echo off
echo Installing commonly used libraries via vcpkg...

:: Überprüfen, ob vcpkg global im PATH vorhanden ist
where vcpkg >nul 2>nul
if %ERRORLEVEL%==0 (
    echo vcpkg found in PATH.
    set VCPKG_CMD=vcpkg
) else (
    echo vcpkg not found in PATH. Using custom path.
    :: Set the path to vcpkg manually (dein aktuelles Verzeichnis)
    set VCPKG_PATH=C:\Users\ralfk\vcpkg
    set VCPKG_CMD=%VCPKG_PATH%\vcpkg
)

:: PDF Libraries
%VCPKG_CMD% install poppler
%VCPKG_CMD% install pdfium

:: DOCX Libraries
%VCPKG_CMD% install libzip
%VCPKG_CMD% install libxml2

:: XLSX Libraries
%VCPKG_CMD% install libxlsxwriter

:: ODF Libraries
%VCPKG_CMD% install libodfgen

:: E-Mail and Outlook Libraries
%VCPKG_CMD% install libetpan
%VCPKG_CMD% install curl
%VCPKG_CMD% install libpff

:: Image Processing Libraries
%VCPKG_CMD% install opencv
%VCPKG_CMD% install sdl2
%VCPKG_CMD% install libpng
%VCPKG_CMD% install libjpeg-turbo
%VCPKG_CMD% install libtiff

:: Audio/Video Processing
%VCPKG_CMD% install ffmpeg

:: Compression and Archiving
%VCPKG_CMD% install zlib
%VCPKG_CMD% install libzip

:: Text Rendering and Fonts
%VCPKG_CMD% install freetype
%VCPKG_CMD% install harfbuzz

:: Document Rendering and Printing
%VCPKG_CMD% install cairo

:: SQLite
%VCPKG_CMD% install sqlite3

:: MySQL
%VCPKG_CMD% install mysql-connector-c

:: PostgreSQL
%VCPKG_CMD% install libpq

:: Boost.Asio
%VCPKG_CMD% install boost-asio

:: libssh2
%VCPKG_CMD% install libssh2

:: nlohmann-json
%VCPKG_CMD% install nlohmann-json

:: rapidjson
%VCPKG_CMD% install rapidjson

:: SFML
%VCPKG_CMD% install sfml

:: Eigen3
%VCPKG_CMD% install eigen3

:: OpenBLAS
%VCPKG_CMD% install openblas

:: Boost
%VCPKG_CMD% install boost

:: fmt
%VCPKG_CMD% install fmt

:: spdlog
%VCPKG_CMD% install spdlog

:: TCLAP
%VCPKG_CMD% install tclap

:: JUCE
%VCPKG_CMD% install juce

%VCPKG_CMD% install gtest

%VCPKG_CMD% install protobuf

%VCPKG_CMD% install yaml-cpp

%VCPKG_CMD% install tbb

%VCPKG_CMD% install jemalloc

%VCPKG_CMD% install tcmalloc

%VCPKG_CMD% install memorypool

%VCPKG_CMD% install catch2

%VCPKG_CMD% install boost-test

%VCPKG_CMD% install doctest

%VCPKG_CMD% install benchmark


echo Installation complete!
pause
