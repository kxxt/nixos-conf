{ config, pkgs, lib, ... }:

{
  imports = [
    ../private/users/kxxt.nix
  ];
  users.users.kxxt = {
    isNormalUser = true;
    uid = 1000;
  };
}
