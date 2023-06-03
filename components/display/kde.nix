{
  services.xserver = {
    enable = true;
    layout = "us";
    libinput = {
      enable = true;
    };
    desktopManager.plasma5.enable = true;
    displayManager.sddm.enable = true;
  };
  # https://nixos.wiki/wiki/KDE#GTK_themes_are_not_applied_in_Wayland_applications
  programs.dconf.enable = true;
}
