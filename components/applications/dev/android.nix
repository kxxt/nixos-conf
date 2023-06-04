{ pkgs, ... }:
{
  packages = with pkgs; [
    android-studio
    android-tools
    android-udev-rules
    scrcpy
    git-repo # For AOSP/Lineage OS checkout
  ];
}
