inputs@{ config, pkgs, lib, ... }:
let
  applications = (import ../../utils/applications.nix) inputs;
in
{
  packages = with pkgs; [
    firefox
    thunderbird
    telegram-desktop
    gh
    httpie
  ] ++ applications [
    ./dev/vscode.nix
    ./dev/android.nix
  ];
}
