# Projektabhängigkeiten (vcpkg)

Dieses Projekt verwendet mehrere häufig verwendete C++-Bibliotheken, die über **vcpkg** installiert werden können. Diese Bibliotheken decken verschiedene Bereiche ab, darunter Bildverarbeitung, Textbearbeitung, Netzwerkkommunikation, Datenbanken, Audio/Video, Speicherverwaltung und Testing.

## Installation

Um die folgenden Bibliotheken zu installieren, kann die Batch-Datei `install_libraries.bat` verwendet werden.

## Bibliotheken und Beschreibungen

### PDF Libraries
- **Poppler**: Ein PDF-Rendering-Bibliothek basierend auf xpdf.  
  [Offizielle Website](https://poppler.freedesktop.org/)
  
- **Pdfium**: Eine Open-Source-PDF-Rendering-Engine von Google.  
  [Offizielle Website](https://pdfium.googlesource.com/pdfium/)

### DOCX Libraries
- **libzip**: Eine C-Bibliothek zum Lesen, Erstellen und Ändern von ZIP-Archiven.  
  [Offizielle Website](https://libzip.org/)

- **libxml2**: Eine XML-Parser-Bibliothek in C, die häufig für das Parsen von DOCX-Dateien verwendet wird.  
  [Offizielle Website](http://xmlsoft.org/)

### XLSX Libraries
- **libxlsxwriter**: Eine C-Bibliothek zum Schreiben von Excel-Dateien (XLSX).  
  [Offizielle Website](https://libxlsxwriter.github.io/)

### ODF Libraries
- **libodfgen**: Eine Bibliothek zum Generieren von ODF-Dateien.  
  [Offizielle Website](https://sourceforge.net/projects/libodfgen/)

### E-Mail und Outlook Libraries
- **libetpan**: Eine Bibliothek zur Handhabung von E-Mail-Protokollen wie IMAP, SMTP, POP3.  
  [Offizielle Website](https://github.com/dinhviethoa/libetpan)
  
- **libpff**: Eine Bibliothek zur Analyse von Outlook PST-Dateien.  
  [Offizielle Website](https://github.com/libyal/libpff)

- **curl**: Eine Bibliothek zur Datenübertragung mittels diverser Protokolle, z.B. HTTP, FTP und SMTP.  
  [Offizielle Website](https://curl.se/)

### Image Processing Libraries
- **OpenCV**: Eine umfangreiche Bibliothek für Computer Vision und Bildbearbeitung.  
  [Offizielle Website](https://opencv.org/)

- **SDL2**: Eine plattformübergreifende Bibliothek für Multimedia und Spieleentwicklung.  
  [Offizielle Website](https://www.libsdl.org/)

- **libpng**: Eine Bibliothek zum Arbeiten mit PNG-Bildern.  
  [Offizielle Website](http://www.libpng.org/pub/png/libpng.html)

- **libjpeg-turbo**: Eine schnelle JPEG-Image-Verarbeitungslösung.  
  [Offizielle Website](https://libjpeg-turbo.org/)

- **libtiff**: Eine Bibliothek für das Lesen und Schreiben von TIFF-Dateien.  
  [Offizielle Website](http://www.libtiff.org/)

### Audio/Video Processing
- **FFmpeg**: Eine umfassende Multimedia-Framework-Bibliothek zur Verarbeitung von Audio und Video.  
  [Offizielle Website](https://ffmpeg.org/)

### Compression and Archiving
- **zlib**: Eine populäre Bibliothek zur Komprimierung von Daten.  
  [Offizielle Website](https://zlib.net/)

- **libzip**: Zum Lesen und Schreiben von ZIP-Dateien (siehe auch DOCX Libraries).  
  [Offizielle Website](https://libzip.org/)

### Text Rendering and Fonts
- **freetype**: Eine Open-Source-Engine zur Darstellung von Schriftarten.  
  [Offizielle Website](https://www.freetype.org/)

- **harfbuzz**: Ein OpenType-Schriftlayout-Engine für komplexe Textverarbeitung.  
  [Offizielle Website](https://harfbuzz.github.io/)

### Document Rendering and Printing
- **Cairo**: Eine 2D-Grafikbibliothek mit Unterstützung für Vektor- und Rastergrafik.  
  [Offizielle Website](https://cairographics.org/)

### Datenbanken
- **SQLite**: Eine self-contained SQL-Datenbank-Engine, ideal für lokale Datenbankanwendungen.  
  [Offizielle Website](https://sqlite.org/)

- **MySQL Connector C**: Ein Client-Bibliothek zur Verbindung mit MySQL-Datenbanken.  
  [Offizielle Website](https://dev.mysql.com/doc/c-api/en/)

- **libpq (PostgreSQL)**: Eine C-Bibliothek zum Zugriff auf PostgreSQL-Datenbanken.  
  [Offizielle Website](https://www.postgresql.org/docs/current/libpq.html)

### Netzwerk und Protokolle
- **Boost.Asio**: Ein plattformübergreifendes C++-Bibliothek für Netzwerkprogrammierung.  
  [Offizielle Website](https://www.boost.org/doc/libs/release/doc/html/boost_asio.html)

- **libssh2**: Eine C-Bibliothek zur Implementierung des SSH-Protokolls.  
  [Offizielle Website](https://www.libssh2.org/)

### JSON Verarbeitung
- **nlohmann-json**: Eine beliebte C++-Bibliothek zur Verarbeitung von JSON-Daten.  
  [Offizielle Website](https://github.com/nlohmann/json)

- **rapidjson**: Eine leistungsstarke JSON-Bibliothek in C++, die für Geschwindigkeit optimiert ist.  
  [Offizielle Website](http://rapidjson.org/)

### Multimedia-Frameworks
- **SFML**: Eine einfache API für Multimedia, Grafik und Audio, hauptsächlich für Spieleentwicklung.  
  [Offizielle Website](https://www.sfml-dev.org/)

- **JUCE**: Ein plattformübergreifendes Framework für Audio- und grafische Benutzeroberflächen.  
  [Offizielle Website](https://juce.com/)

### Wissenschaftliche und Mathematische Bibliotheken
- **Eigen3**: Eine C++-Bibliothek für lineare Algebra, Matrizen, Vektoren und numerische Berechnungen.  
  [Offizielle Website](https://eigen.tuxfamily.org/)

- **OpenBLAS**: Eine optimierte BLAS-Bibliothek für lineare Algebra-Berechnungen.  
  [Offizielle Website](https://www.openblas.net/)

### C++-spezifische Bibliotheken
- **Boost**: Eine umfangreiche Sammlung von C++-Bibliotheken, die das Standard-C++ erweitern.  
  [Offizielle Website](https://www.boost.org/)

- **fmt**: Eine moderne und sichere Bibliothek zum Formatieren von Zeichenketten in C++.  
  [Offizielle Website](https://fmt.dev/)

- **spdlog**: Eine hochperformante Logging-Bibliothek in C++.  
  [Offizielle Website](https://github.com/gabime/spdlog)

- **TCLAP**: Eine einfache C++-Bibliothek zum Parsen von Kommandozeilenargumenten.  
  [Offizielle Website](http://tclap.sourceforge.net/)

### Speicher-Optimierungs-Bibliotheken
- **TBB (Threading Building Blocks)**: Eine Bibliothek für parallele Programmierung und Speicheroptimierung.  
  [Offizielle Website](https://github.com/oneapi-src/oneTBB)

- **JEMalloc**: Ein moderner Speicher-Allokator für Mehrkernarchitekturen.  
  [Offizielle Website](http://jemalloc.net/)

- **TCMalloc**: Ein schneller Speicher-Allokator von Google.  
  [Offizielle Website](https://github.com/google/tcmalloc)

- **MemoryPool**: Eine einfache und effiziente Bibliothek für Memory-Pooling.  
  [Offizielle Website](https://github.com/foonathan/memory)

### Test- und Benchmark-Bibliotheken
- **Google Test (gtest)**: Ein populäres Unit-Test-Framework für C++.  
  [Offizielle Website](https://github.com/google/googletest)

- **Catch2**: Ein einfach zu verwendendes Test-Framework für C++.  
  [Offizielle Website](https://github.com/catchorg/Catch2)

- **Boost.Test**: Ein Testmodul der Boost-Bibliothek für Unit- und Integrationstests.  
  [Offizielle Website](https://www.boost.org/doc/libs/release/libs/test/)

- **doctest**: Ein leichtgewichtiges C++-Test-Framework.  
  [Offizielle Website](https://github.com/onqtam/doctest)

- **Google Benchmark**: Ein Benchmarking-Framework für C++ zur Messung der Leistung von Code.  
  [Offizielle Website](https://github.com/google/benchmark)

