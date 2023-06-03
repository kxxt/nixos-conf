inputs@{ config, pkgs, lib, ... }:
let
  applications = (import ../../utils/applications.nix) inputs;
in
{
  packages = with pkgs; [
    firefox
    thunderbird
    telegram-desktop
    # Cmdline utitilies
    gh
    httpie
    # Multimedia
    ffmpeg
    audacity # Audio editor
    simplescreenrecorder # Screen recording
    peek # Gif Screen recording
    asciinema # Terminal recorder
  ] ++ applications [
    ./dev/vscode.nix
    ./dev/android.nix
  ];
}
