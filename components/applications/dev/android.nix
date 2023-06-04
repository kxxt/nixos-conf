{ pkgs, ... }:
{
  packages = with pkgs; [
    android-studio
    android-tools
    android-udev-rules
    scrcpy
  ];
}
