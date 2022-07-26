# CPP Project Template

## Bootstrap environment

### Windows

#### Install Visual Studio

You are free to install the Visual Studio IDE or only the tools and compiler
sets using the _Build Tools for Visual Studio_ package along with your own text
editor or IDE. In both cases, once in the Visual Studio installer, select the _Individual Components_ tab and check the options:

- C++ Clang Compiler for Windows
- C++ Clang-cl for v[version] build tools (x64/x86)
- C++ CMake tools for Windows

:warning: To use the tools, you will need to start the editor from from a
_Developer Command Prompt for Visual Studio_, or at least make sure the
environment includes the tools in the `PATH` environment variable. The default
configuration of the new Windows Terminal includes profiles to launch
either a Powershell or Batch developer command prompt.

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

1. Follow [instructions](https://apt.llvm.org/) to install Clang-13.
2.


install cmake 3.22
sudo apt install \
    curl zip unzip tar \
    g++ build-essential \
    pkg-config ninja-build
