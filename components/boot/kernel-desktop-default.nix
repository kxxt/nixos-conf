({ lib, config, pkgs, ... }: {
  config = lib.mkIf (config.specialisation != { }) {
    # Config that should only apply to the default system, not the specialised ones
    boot.kernelPackages = pkgs.linuxPackages_zen;
  };
})
