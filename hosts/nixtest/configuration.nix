{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/default.nix
      ../../modules/desktop.nix
      #../../modules/laptop.nix
      #../../modules/server.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nixtest";
  networking.useDHCP = false;
  networking.interfaces.ens3.useDHCP = true;
  networking.hostId = "2108ddb7";
  boot.supportedFilesystems = [ "zfs" ];

  system.stateVersion = "19.09";
}

