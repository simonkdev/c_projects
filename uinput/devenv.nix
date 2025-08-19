{
  pkgs,
  lib,
  config,
  ...
}: {
  languages.c.enable = true;
  packages = with pkgs; [
    cmake
    gcc
    ninja
    gdb
    gcc-arm-embedded
    lldb
  ];
}
