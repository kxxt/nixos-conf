{ pkgs, config, ... }: {
  specialisation = {
    latestKernel.configuration = {
      system.nixos.tags = [ "latestkernel" ];
      boot.kernelPackages = pkgs.linuxPackages_latest;
    };
  };
  # Security is a second concern here.
  boot.kernelParams = [ "ibt=off" "mitigations=off" ];
}
