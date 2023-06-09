inputs@{ config, pkgs, lib, ... }:
let
  applications = (import ../../utils/applications.nix) inputs;
in
{
  packages = with pkgs; [
    # Browsers
    firefox
    chromium
    firefox-devedition # TODO: make ff & ff-dev coexist
    tor-browser-bundle-bin

    # Office
    onlyoffice-bin

    # Email
    thunderbird

    # IM
    telegram-desktop
    discord
    element-desktop

    # Meeting
    zoom-us

    # Cmdline utitilies
    gh
    httpie
    difftastic # diff util
    delta # diff util
    croc # ad-hoc file transfer
    dogdns # better dig
    gifsicle # GIF utils
    powertop # Analyze power consumption on Intel-based laptops
    vbindiff # Binary diff viewer
    yt-dlp
    zoxide # magic cd

    # Multimedia
    ffmpeg
    audacity # Audio editor
    simplescreenrecorder # Screen recording
    peek # Gif Screen recording
    asciinema # Terminal recorder
    cmus # Command line music player
    vlc # Player
    gimp # Image editor
    inkscape # Vector graphics editor
    obs-studio

    # REPLs
    cling

    # Screen
    # TODO: port deskreen to NixOS

    # Knowledge Management
    obsidian

    # E-Book Reader
    # fbreader
    foliate

    # Note taking
    rnote
    xournalpp
    # TODO: typora

    # (S)FTP
    filezilla

    # Sandboxing
    firejail

    # Disk Utils
    gparted

    # Reverse Engineering
    imhex

    # Android as cam
    # iriunwebcam-bin

    # Camera
    # kamera
    
    # PDF Editor
    masterpdfeditor

    # Math
    mathematica

    # IDEs
    jetbrains.pycharm-community
    racket

    # DB
    sqlitebrowser

    # Network
    wireshark
    nmap

    # Yubikey
    yubikey-manager
    yubikey-personalization-gui
  ] ++ applications [
    ./dev/vscode.nix
    ./dev/android.nix
    ./dev/python.nix
    ./dev/js.nix
    ./dev/vm.nix
  ];
}
