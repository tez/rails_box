# A Virtual Machine for Ruby on Rails Development

## Introduction

This project automates the setup of a development environment for working on Ruby on Rails itself. Use this virtual machine to work on a pull request with everything ready to hack and run the test suites.

**Please note this virtual machine is not designed to be used for Rails application development.**

## Requirements

* [VirtualBox](https://www.virtualbox.org) or [VMWare Fusion](http://www.vmware.com/products/fusion) or [Parallels Desktop](http://www.parallels.com/products/desktop/)(need Vagrant 1.5+, see [vagrant-parallels](http://parallels.github.io/vagrant-parallels/docs/installation/index.html))

* [Vagrant 1.5+](http://vagrantup.com) (not a Ruby gem)

* Vagrant plugin [sahara](https://github.com/jedi4ever/sahara)

* Vagrant plugin [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus)

* Ruby Gems [Berkshelf](http://berkshelf.com/)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

    host $ git clone git@github.com:tez/rails_box.git PROJECT
    host $ berks vendor cookbooks
    host $ vagrant up --provision
    host $ mv APPNAME PROJECT
    host $ cd PROJECT
    host $ bundle install --path .bundle
    host $ bundle exec rails new . --skip-test-unit
x
That's it.

(If you want to use VMWare Fusion instead of VirtualBox, write `vagrant up --provider=vmware_fusion` instead of `vagrant up` when building the VM for the first time. After that, Vagrant will remember your provider choice, and you won't need to include the `provider` flag again.)

(If you want to use Parallels Desktop instead of VirtualBox, you need Vagrant 1.5+, and write `vagrant up --provider=parallels` instead of `vagrant up` when building the VM for the first time. After that, Vagrant will remember your provider choice, and you won't need to include the `provider` flag again.)

If the base box is not present that command fetches it first. The setup itself takes about 3 minutes in my MacBook Air. After the installation has finished, you can access the virtual machine with

    host $ vagrant ssh
    Welcome to Ubuntu 14.04 LTS (GNU/Linux 3.13.0-24-generic x86_64)
    ...
    Last login: Mon Aug  4 14:51:44 2014 from 10.211.55.2
    vagrant@trusty64:~$

Port 3000 in the host computer is forwarded to port 3000 in the virtual machine. Thus, applications running in the virtual machine can be accessed via localhost:3000 in the host computer.

## What's In The Box

* Nginx

* ImageMagick

* Git

* rbenv

* Ruby 2.1.2 (binary rbenv install)

* Bundler

* SQLite3

* System dependencies for nokogiri, sqlite3

* Databases and users needed to run the Active Record test suite

* Node.js for the asset pipeline

* zsh

* git-flow

* tmux

* vim

## License

Released under the MIT License, Copyright (c) 2014 tez.

