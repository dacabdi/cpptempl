# CPP Project Template

## Bootstrap environment

### Windows

#### Install Visual Studio

You are free to install the Visual Studio IDE or only the tools and the
compiler sets using the _Build Tools for Visual Studio_ package along with your
own text editor or IDE. In both cases, once in the Visual Studio installer,
select the _Individual Components_ tab and check the options:

- C++ Clang Compiler for Windows
- C++ Clang-cl for v[version] build tools (x64/x86)
- C++ CMake tools for Windows

:warning: To use the tools, you will need to run from a _Developer Command
Prompt for Visual Studio_.

##### Manual installation

Download and install from:

- [Visual Studio IDE](https://visualstudio.microsoft.com/downloads/)
- [Build Tools for Visual Studio](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022)

##### Using `winget`

- For the full IDE:

```batch
winget install Microsoft.VisualStudio.<release-year>.<edition>
```

- For the build tools only:

```batch
winget install Microsoft.VisualStudio.<release-year>.BuildTools
```

`winget` supports `--location` and `--interactive` for more precise and
controlled configurations.

---

### Linux (Debian-based)

install docker
install act -> <https://github.com/nektos/act>
install cmake 3.22
sudo apt install \
    curl zip unzip tar \
    g++ build-essential \
    pkg-config ninja-build
