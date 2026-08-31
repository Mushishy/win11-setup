# winget-installable standalone tools (MSVC-less C/C++ build toolchain)
$winTools = @(
    "Kitware.CMake", "Ninja-build.Ninja", "NASM.NASM", "MSYS2.MSYS2", "Git.Git"
)

Write-Host "Install C++ and build toolchain support"
foreach ($id in $winTools) {
    winget install --id $id --source winget --accept-package-agreements --accept-source-agreements
}

# gcc/g++/gdb/pkg-config + dev libs, mirrored via MSYS2's pacman (apt has no direct winget equivalent)
$msys2Packages = @(
    "mingw-w64-x86_64-gcc", "mingw-w64-x86_64-gdb", "mingw-w64-x86_64-pkg-config",
    "mingw-w64-x86_64-openssl", "mingw-w64-x86_64-curl", "mingw-w64-x86_64-libpcap",
    "mingw-w64-x86_64-libffi", "mingw-w64-x86_64-zlib"
)
# valgrind and libnet have no supported Windows build, so they're intentionally omitted
& "C:\msys64\usr\bin\bash.exe" -lc "pacman -S --noconfirm $($msys2Packages -join ' ')"