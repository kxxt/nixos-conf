# Profile for laptop that comes with hybrid graphics
inputs@{ config, pkgs, lib, ... }:
let
  userApps = (import ../../components/applications/laptop-and-desktop.nix) inputs;
in
{
  imports = [
    ../base.nix
    ../../components/nix/index.nix
    ../../components/boot/laptop-and-desktop.nix
    ../../components/network/base.nix
    ../../components/drivers/nvidia/intel-nvidia-laptop.nix
    ../../components/services/laptop-and-desktop.nix
    ../../components/display/kde.nix
    ../../components/configuration/local.nix
    ../../components/customizations/keymapping.nix
  ];
  # Applications for laptop.
  users.users.kxxt = userApps;
  environment.systemPackages = with pkgs; [
    pinentry-qt
  ];
}
