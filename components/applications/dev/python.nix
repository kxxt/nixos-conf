{ pkgs, ... }:
let
  pypackages = ps: with ps; [
    requests
    ipython
    numpy
  ];
in
{
  packages = with pkgs; [
    (python311.withPackages pypackages)
  ];
}
