#!/bin/sh

cd src

dotnet build cs/cs.csproj -c Release
dotnet build fs/fs.fsproj -c Release

cd zig
zig build -Drelease-safe

cd ../nim
nim c -d:release main.nim