# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "parallels/ubuntu-14.04"
  # config.vm.box = "chef/ubuntu-14.04"

  # Configurate the virtual machine to use 512MB of RAM
  config.vm.provider "parallels" do |v|
  # config.vm.provider "virtualbox" do |v|
    v.memory = 512
    v.cpus = 1
  end

  # Forward the Rails server default port to the host
  # config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.omnibus.chef_version = :latest

  # Use Chef Solo to provision our virtual machine
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]

    chef.add_recipe "build-essential"
    chef.add_recipe "git"
    chef.add_recipe "memcached"
    chef.add_recipe "nodejs"
    chef.add_recipe "database"
    chef.add_recipe "xml"
    chef.add_recipe "ruby_build"
    chef.add_recipe "rbenv::system"
    chef.add_recipe "nginx"
    chef.add_recipe "imagemagick"
    chef.add_recipe "vim"

    chef.add_recipe "rails_box::mysql"
    chef.add_recipe "rails_box::autoconf"
    chef.add_recipe "rails_box::bison"
    chef.add_recipe "rails_box::libssl-dev"
    chef.add_recipe "rails_box::libyaml-dev"
    chef.add_recipe "rails_box::libreadline6-dev"
    chef.add_recipe "rails_box::zlib1g-dev"
    chef.add_recipe "rails_box::libncurses5-dev"

    chef.add_recipe "rails_box::ops_user"
    chef.add_recipe "rails_box::keys"
    # chef.add_recipe "rails_box::sqlite3_dev"
    chef.add_recipe "rails_box::nginx_setting"
    chef.add_recipe "rails_box::iptables"

    # For development
    chef.add_recipe "rails_box::zsh"
    chef.add_recipe "rails_box::prezto"
    chef.add_recipe "rails_box::git_flow"
    chef.add_recipe "rails_box::tmux"
    chef.add_recipe "rails_box::gemrc"
    chef.add_recipe "rails_box::pryrc"

    # Install Ruby 2.1.5 and Bundler
    chef.json = {
      # mysql: {
      #   version: '5.6',
      #   initial_root_password: "password",
      #   bind_address: "127.0.0.1"
      # },
      rbenv: {
        global: "2.1.5",
        rubies: ["2.1.5"],
        gems: {
          "2.1.5" => [
            { name: "bundler" },
          ]
        }
      }
    }
  end
end
