# Cookbook Name:: rails_box
# Recipe:: ops_user
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#
package "tmux" do
  action :install
end

template ".tmux.conf" do
  path "/home/vagrant/.tmux.conf"
  owner "vagrant"
  group "vagrant"
  mode "0644"
end
