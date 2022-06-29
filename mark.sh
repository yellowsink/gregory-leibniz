#!/bin/sh

cd src


hyperfine \
  cs/bin/Release/net*/cs   \
  zig/zig-out/bin/zig      \
  "node js.js"             \
  "deno run js.js"         \
  "deno run gpujs/gpu.mjs" \
  nim/main                 \
  "nim/main --gc:none"     \
  "pypy3 python.py"        #\
  #fs/bin/Release/net*/fs   \
  #"python python.py"       \
  #"ruby ruby.rb"