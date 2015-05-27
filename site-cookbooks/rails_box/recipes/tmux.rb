# Cookbook Name:: rails_box
# Recipe:: tmux
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#
package "tmux" do
  action :install
end

template ".tmux.conf" do
  path "#{node['rails_box']['home']}/.tmux.conf"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end
