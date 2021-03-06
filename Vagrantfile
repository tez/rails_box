# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
sudo apt-get update
SCRIPT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "parallels/ubuntu-14.04"

  # Configurate the virtual machine to use 512MB of RAM
  config.vm.provider "parallels" do |v|
    v.memory = 1024
    v.cpus = 1
  end

  # Forward the Rails server default port to the host
  # config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision "shell", inline: $script

  # Use Chef Zero to provision our virtual machine
  config.vm.provision :chef_zero do |chef|
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]
    chef.data_bags_path = "data_bags"
    chef.nodes_path = "nodes"
    chef.roles_path = "roles"

    chef.add_recipe "build-essential"
    chef.add_recipe "rails_box::build-environment"
    chef.add_recipe "git"
    chef.add_recipe "memcached"
    chef.add_recipe "nodejs"
    # chef.add_recipe "database"
    chef.add_recipe "xml"
    chef.add_recipe "ruby_build"
    chef.add_recipe "ruby_rbenv::system"
    # chef.add_recipe "nginx"
    chef.add_recipe "imagemagick"
    chef.add_recipe "vim"
    chef.add_recipe "timezone"

    # chef.add_recipe "rails_box::ops_user"
    # chef.add_recipe "rails_box::keys"
    chef.add_recipe "rails_box::sqlite3_dev"
    # chef.add_recipe "rails_box::mysql"
    # chef.add_recipe "rails_box::nginx_setting"
    # chef.add_recipe "rails_box::iptables"

    # For development
    chef.add_recipe "rails_box::zsh"
    chef.add_recipe "rails_box::prezto"
    chef.add_recipe "rails_box::git_flow"
    chef.add_recipe "rails_box::tmux"
    chef.add_recipe "rails_box::gemrc"
    chef.add_recipe "rails_box::pryrc"

    # Install Ruby 2.3.1 and Bundler
    chef.json = {
      rails_box: {
        user: "vagrant",
        owner: "vagrant",
        group: "vagrant",
        home: "/home/vagrant"
      },
      tz: "Asia/Tokyo",
      rbenv: {
        global: "2.3.1",
        rubies: ["2.3.1"],
        gems: {
          "2.3.1" => [
            { name: "bundler" }
          ]
        }
      }
    }
  end
end
