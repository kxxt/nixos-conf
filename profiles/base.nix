# The base profile
{ config, pkgs, lib, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    curl
    htop
    dig
    gnupg
    ripgrep
    bat
    lsof
    dos2unix
    htmlq
    jq
    ffmpeg-full
    ncdu
  ];
}
