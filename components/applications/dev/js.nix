{ pkgs, ... }:
{
  packages = with pkgs; [
    nodejs_20
    nodePackages.npm-check-updates
  ];
}
