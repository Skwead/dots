{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "root";
  home.homeDirectory = "/root";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";

  #home.packages = with pkgs; [
  #  firefox
  #  python3.pkgs.PIL
  #];

  home.packages = [
    pkgs.firefox
    pkgs.python3.pkgs.pillow
  ];



  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
    ];
  };
}
