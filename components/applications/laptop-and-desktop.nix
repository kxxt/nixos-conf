inputs@{ config, pkgs, lib, ... }:
let
  applications = (import ../../utils/applications.nix) inputs;
in
{
  packages = with pkgs; [
    # Browsers
    firefox
    chromium
    firefox-devedition
    # Email
    thunderbird
    # IM
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
    # REPLs
    cling
  ] ++ applications [
    ./dev/vscode.nix
    ./dev/android.nix
    ./dev/python.nix
  ];
}
