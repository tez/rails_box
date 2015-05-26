#
# Cookbook Name:: rails_box
# Recipe:: prezto
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#
bash "zprezto_install" do
  code <<-EOH
    git clone --recursive https://github.com/sorin-ionescu/prezto.git /home/vagrant/.zprezto
  EOH
  # user 'vagrant'
  # group 'vagrant'
  not_if "test -d /home/vagrant/.zprezto"
end

template "zpreztorc" do
  path "/home/vagrant/.zprezto/runcoms/zpreztorc"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

template "zshrc" do
  path "/home/vagrant/.zprezto/runcoms/zshrc"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

template ".zshrc.local" do
  path "/home/vagrant/.zshrc.local"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

link "/home/vagrant/.zshenv" do
  to "/home/vagrant/.zprezto/runcoms/zshenv"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

link "/home/vagrant/.zshrc" do
  to "/home/vagrant/.zprezto/runcoms/zshrc"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

link "/home/vagrant/.zlogin" do
  to "/home/vagrant/.zprezto/runcoms/zlogin"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

link "/home/vagrant/.zlogout" do
  to "/home/vagrant/.zprezto/runcoms/zlogout"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

link "/home/vagrant/.zpreztorc" do
  to "/home/vagrant/.zprezto/runcoms/zpreztorc"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end

link "/home/vagrant/.zprofile" do
  to "/home/vagrant/.zprezto/runcoms/zprofile"
  # owner "vagrant"
  # group "vagrant"
  mode "0644"
end
