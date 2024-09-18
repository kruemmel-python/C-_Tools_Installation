
## CMake.md

# Erstellen eines C++-Projekts in Visual Studio mit CMake und einer externen Bibliothek

In dieser Anleitung wird erklärt, wie man ein C++-Projekt in Visual Studio mit CMake erstellt und eine externe Bibliothek (installiert mit **vcpkg**) integriert. Wir nutzen als Beispiel die **fmt**-Bibliothek, die mit **vcpkg** installiert wurde.

## 1. Voraussetzungen

Bevor du beginnst, stelle sicher, dass die folgenden Tools installiert sind:
- **Visual Studio 2019/2022** mit der C++-Entwicklungsumgebung
- **CMake** (falls nicht installiert, siehe [README.md](README.md) zur Installation)
- **vcpkg** (Bibliothekeninstallations-Tool, siehe [README.md](README.md) zur Installation)

## 2. Erstellen eines neuen CMake-Projekts in Visual Studio

1. **Visual Studio öffnen**:
   Öffne Visual Studio und klicke auf **Create a new project**.

2. **CMake Project auswählen**:
   - Gib "CMake" in die Suchleiste ein und wähle **CMake Project** aus.
   - Klicke auf **Next**.

3. **Projekteinstellungen**:
   - Gib einen Projektnamen und den Speicherort an (z. B. `CMakeTest` in **C:\Projects\CMakeTest**).
   - Klicke auf **Create**, um das Projekt zu erstellen.

## 3. Installieren einer Bibliothek mit vcpkg (Beispiel: fmt)

Bevor wir mit der Verwendung von **CMake** fortfahren, installieren wir die externe Bibliothek **fmt** mit **vcpkg**.

1. **vcpkg installieren (falls nicht vorhanden)**:
   Befolge die Anweisungen in der [README.md](README.md), um **vcpkg** zu installieren und zu konfigurieren.

2. **fmt installieren**:
   Öffne die Eingabeaufforderung und installiere **fmt**:
   ```bash
   vcpkg install fmt
   ```

3. **Visual Studio mit vcpkg integrieren**:
   Um sicherzustellen, dass **vcpkg** die installierten Bibliotheken für dein Visual Studio-Projekt verfügbar macht, musst du vcpkg mit CMake konfigurieren. Du kannst dies tun, indem du in den CMake-Einstellungen angibst, wo vcpkg die Bibliotheken findet:

   ```bash
   cmake .. -DCMAKE_TOOLCHAIN_FILE=C:/vcpkg/scripts/buildsystems/vcpkg.cmake
   ```

   Alternativ kannst du dies in Visual Studio über das **CMakeSettings.json**-Konfigurationsfenster machen.

## 4. CMakeLists.txt konfigurieren

Im Projektordner findest du eine Datei namens **CMakeLists.txt**. Diese Datei wird verwendet, um die Projektkonfiguration und die zu verwendenden Bibliotheken zu definieren.

### Beispiel für die Einbindung der `fmt`-Bibliothek

Ergänze die **CMakeLists.txt**-Datei wie folgt, um die **fmt**-Bibliothek zu verwenden:

```cmake
cmake_minimum_required(VERSION 3.10)

# Projektname
project(CMakeTest)

# C++ Standard festlegen
set(CMAKE_CXX_STANDARD 17)

# Füge den vcpkg CMake Toolchain hinzu
if(DEFINED ENV{VCPKG_ROOT})
    set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")
endif()

# Füge die fmt-Bibliothek hinzu
find_package(fmt CONFIG REQUIRED)

# Erstelle eine ausführbare Datei
add_executable(CMakeTest main.cpp)

# Linke die fmt-Bibliothek
target_link_libraries(CMakeTest PRIVATE fmt::fmt)
```

### Erklärung der CMake-Befehle:

- `project(CMakeTest)`: Legt den Projektnamen fest.
- `set(CMAKE_CXX_STANDARD 17)`: Setzt den C++-Standard auf C++17.
- `set(CMAKE_TOOLCHAIN_FILE ...)`: Dieser Befehl teilt CMake mit, die vcpkg-Toolchain zu verwenden.
- `find_package(fmt CONFIG REQUIRED)`: Findet die **fmt**-Bibliothek, die mit **vcpkg** installiert wurde.
- `add_executable(CMakeTest main.cpp)`: Erzeugt eine ausführbare Datei aus dem **main.cpp**-Quellcode.
- `target_link_libraries(CMakeTest PRIVATE fmt::fmt)`: Verlinkt die **fmt**-Bibliothek mit der ausführbaren Datei.

## 5. Erstellen der `main.cpp`

Erstelle eine Datei namens **main.cpp** im selben Verzeichnis wie **CMakeLists.txt** und füge den folgenden Beispielcode hinzu, der die **fmt**-Bibliothek verwendet:

```cpp
#include <fmt/core.h>

int main() {
    fmt::print("Hello, {}!\n", "world");
    return 0;
}
```

Dieser Code nutzt die `fmt::print`-Funktion, um eine formatierte Ausgabe auf der Konsole auszugeben.

## 6. Projekt in Visual Studio bauen und ausführen

1. **CMake konfigurieren**:
   Visual Studio erkennt automatisch die Änderungen an der **CMakeLists.txt**-Datei und konfiguriert das Projekt basierend auf den Angaben.

2. **Projekt erstellen**:
   Klicke im Visual Studio-Menü auf **Build** > **Build All**, um das Projekt zu kompilieren.

3. **Projekt ausführen**:
   Wenn der Build erfolgreich war, kannst du das Programm über **Debug** > **Start Without Debugging** ausführen.

Die Ausgabe sollte wie folgt aussehen:
```
Hello, world!
```

## 7. Fazit

Mit dieser Anleitung hast du ein C++-Projekt in Visual Studio mit CMake erstellt, eine externe Bibliothek (fmt) mit **vcpkg** installiert und diese Bibliothek in dein Projekt eingebunden. Durch die Integration von **vcpkg** und **CMake** kannst du viele nützliche Bibliotheken einfach in zukünftige Projekte einbinden und effektiv nutzen.

---

## Weiterführende Links

- [CMake Dokumentation](https://cmake.org/documentation/)
- [fmt Dokumentation](https://github.com/fmtlib/fmt)
- [vcpkg Dokumentation](https://github.com/microsoft/vcpkg)
- [Visual Studio C++ Entwicklung](https://visualstudio.microsoft.com/de/vs/features/cplusplus/)
```



