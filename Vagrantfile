# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$init = <<SCRIPT
  sudo pacman -Syu --noconfirm
  sudo systemctl restart netctl@eth1
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "base"
  config.vm.box_url = "http://vagrant.srijn.net/archlinux-x64-2014-01-07.box"
  config.vm.hostname = "assets"
  config.vm.network :public_network, ip: "10.0.0.169", netmask: "24", broadcast: "10.0.0.255", gateway: "10.0.0.1"
  config.vm.provision "shell", inline: $init
end
