## README.md

# Anleitung zur Installation von Git, vcpkg und CMake auf Windows mit Winget (Installation in C:\)

In dieser Anleitung erfährst du, wie du Git, vcpkg und CMake auf Windows mithilfe des **Windows Package Managers (winget)** installierst. Alle Programme und vcpkg werden direkt auf **C:\** installiert.

## 1. Vorbereitung: Wechsel auf Laufwerk C:\

Öffne die **Eingabeaufforderung** oder **PowerShell** und wechsle zuerst zum Laufwerk **C:\**, um sicherzustellen, dass alle Installationen dort stattfinden.

```bash
cd C:\
```

## 2. Installation von Git, CMake und vcpkg über Winget

Winget ist ein Paketmanager für Windows, mit dem du Software schnell und einfach über die Befehlszeile installieren kannst.

### Schritte zur Installation mit Winget:

1. **Git installieren**:
   Öffne die **Eingabeaufforderung** oder **PowerShell** und führe den folgenden Befehl aus. Git wird in **C:\Git** installiert:
   ```bash
   winget install --id Git.Git -e --location C:\Git
   ```

2. **CMake installieren**:
   Installiere CMake mit Winget, das in **C:\CMake** installiert wird:
   ```bash
   winget install --id Kitware.CMake -e --location C:\CMake
   ```

3. **vcpkg installieren**:
   Da vcpkg nicht direkt über winget verfügbar ist, klone es von GitHub und installiere es manuell auf **C:\vcpkg**:
   
   1. Wechsle in das Verzeichnis **C:\**:
      ```bash
      cd C:\
      ```

   2. Klone das vcpkg-Repository:
      ```bash
      git clone https://github.com/microsoft/vcpkg
      ```

   3. Wechsle in das vcpkg-Verzeichnis und installiere vcpkg:
      ```bash
      cd vcpkg
      .\bootstrap-vcpkg.bat
      ```

### Überprüfe die Installationen:
Nach der Installation kannst du die Versionen der Programme überprüfen, um sicherzustellen, dass sie korrekt installiert wurden:

```bash
C:\Git\bin\git --version
C:\CMake\bin\cmake --version
C:\vcpkg\vcpkg --version
```

## 3. Setzen der Systemvariablen für Git, CMake und vcpkg

Damit du **Git**, **CMake** und **vcpkg** von überall in der Eingabeaufforderung oder PowerShell ausführen kannst, musst du die **Systemvariablen** für diese Programme setzen. Dies bedeutet, dass du die entsprechenden Pfade zu den Programmen der **`Path`-Umgebungsvariablen** hinzufügst.

### Schritte zum Setzen der Systemvariablen:

1. **Öffnen der Systemumgebungsvariablen**:
   - Drücke `Windows + S`, gib **"Umgebungsvariablen bearbeiten"** ein und öffne den entsprechenden Menüeintrag.
   
2. **Bearbeiten der `Path`-Variablen**:
   - Im Fenster **"Systemeigenschaften"** klicke auf **Umgebungsvariablen**.
   - Unter **Benutzervariablen** wähle den Eintrag **Path** aus und klicke auf **Bearbeiten**.

3. **Pfade hinzufügen**:
   - Klicke auf **Neu** und füge die folgenden Pfade hinzu:
     - **Git**: Füge den Pfad zu `git.exe` hinzu, z.B.:
       ```plaintext
       C:\Git\bin
       ```
     - **CMake**: Füge den Pfad zu `cmake.exe` hinzu, z.B.:
       ```plaintext
       C:\CMake\bin
       ```
     - **vcpkg**: Füge den Pfad zu `vcpkg.exe` hinzu, z.B.:
       ```plaintext
       C:\vcpkg
       ```

4. **Änderungen speichern**:
   - Klicke auf **OK** in allen geöffneten Fenstern, um die Änderungen zu übernehmen.

5. **Eingabeaufforderung oder PowerShell neu starten**:
   Damit die Änderungen wirksam werden, musst du deine Eingabeaufforderung oder PowerShell schließen und neu öffnen.

### Überprüfe, ob die Programme nun global verfügbar sind:
```bash
git --version
cmake --version
vcpkg --version
```

Sobald die Systemvariablen richtig gesetzt sind, kannst du `vcpkg`, `git` und `cmake` von überall im System verwenden, ohne ins vcpkg-Verzeichnis wechseln zu müssen.

## 4. Verwendung von vcpkg zur Installation von Bibliotheken

Mit vcpkg kannst du C++-Bibliotheken installieren und verwalten.

### Schritte zur Installation von vcpkg-Bibliotheken:

1. Öffne die Eingabeaufforderung oder PowerShell und installiere eine Bibliothek, z. B. **fmt**:

   ```bash
   vcpkg install fmt
   ```

2. Wenn du eine bestimmte Architektur (z. B. `x64-windows`) verwenden möchtest, füge das Triplet hinzu:

   ```bash
   vcpkg install fmt:x64-windows
   ```

### Verwendung der Batch-Datei zur Bibliotheksinstallation

In diesem Repository findest du eine Batch-Datei `install_libraries.bat`, die die Installation häufig verwendeter Bibliotheken automatisiert. 

### Schritte zur Verwendung der Batch-Datei:

1. **Batch-Datei ausführen**:
   - Lade die Datei `install_libraries.bat` aus diesem Repository herunter.
   - Öffne die Eingabeaufforderung und navigiere zum Verzeichnis, in dem sich die Datei befindet.

2. **Ausführen der Batch-Datei**:
   ```bash
   .\install_libraries.bat
   ```

Diese Batch-Datei installiert alle in der Datei aufgeführten Bibliotheken, darunter **Boost**, **fmt**, **spdlog** und viele weitere.

---

## 5. Weitere wichtige vcpkg-Befehle

- **Bibliotheken auflisten**:
  Um zu sehen, welche Bibliotheken installiert sind:
  ```bash
  vcpkg list
  ```

- **Bibliothek deinstallieren**:
  Um eine installierte Bibliothek zu entfernen:
  ```bash
  vcpkg remove <bibliothek>
  ```

---

## Weitere Informationen
- [vcpkg Dokumentation](https://github.com/microsoft/vcpkg)
- [CMake Dokumentation](https://cmake.org/documentation/)
- [Git Dokumentation](https://git-scm.com/doc)
```

