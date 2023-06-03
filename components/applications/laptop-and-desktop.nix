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
    # Office
    onlyoffice-bin
    # Email
    thunderbird
    # IM
    telegram-desktop
    # Cmdline utitilies
    gh
    httpie
    difftastic # diff util
    delta # diff util
    # Multimedia
    ffmpeg
    audacity # Audio editor
    simplescreenrecorder # Screen recording
    peek # Gif Screen recording
    asciinema # Terminal recorder
    cmus # Command line music player
    vlc # Player
    # REPLs
    cling
    # Screen
    # TODO: port deskreen to NixOS
    # Knowledge Management
    obsidian
  ] ++ applications [
    ./dev/vscode.nix
    ./dev/android.nix
    ./dev/python.nix
    ./dev/js.nix
  ];
}
