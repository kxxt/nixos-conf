inputs@{ config, pkgs, lib, ... }:
let
  applications = (import ../../utils/applications.nix) inputs;
in
{
  packages = with pkgs; [
    firefox
    thunderbird
    telegram-desktop
  ] ++ applications [
    ./dev/vscode.nix
  ];
}
