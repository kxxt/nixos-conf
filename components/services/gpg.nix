{ pkgs, ... }: {
  services.udev.packages = [ pkgs.yubikey-personalization ];
  services.pcscd.enable = true;
  # Don't forget to install pinentry-qt.

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    # TODO: fix this
    pinentryFlavor = "qt";
  };
}
