inputs@{ config, pkgs, lib, ... }: pathes:
let
  getpackages = path:
    let
      x = import path;
      evaluated = x inputs;
    in
    evaluated.packages;
  packageLists = builtins.map getpackages pathes;
in
builtins.concatLists packageLists
