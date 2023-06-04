{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    terminus_font
    terminus_font_ttf
    cascadia-code
    sarasa-gothic
    wqy_zenhei
    wqy_microhei
  ];
}
