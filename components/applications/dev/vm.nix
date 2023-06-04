{ pkgs, ... }:
{
  packages = with pkgs; [
    virt-manager
    qemu_full
  ];
}
