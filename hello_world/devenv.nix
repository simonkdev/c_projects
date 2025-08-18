{
  pkgs,
  lib,
  config,
  ...
}: {
  languages.c.enable = true;
  packages = with pkgs; [cmake make ninja gdb gcc-arm-embedded clang lldb];
}
