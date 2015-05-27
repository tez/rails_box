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
    git clone --recursive https://github.com/sorin-ionescu/prezto.git #{node['rails_box']['home']}/.zprezto
  EOH
  user node['rails_box']['user']
  group node['rails_box']['group']
  not_if "test -d #{node['rails_box']['home']}/.zprezto"
end

template "zpreztorc" do
  path "#{node['rails_box']['home']}/.zprezto/runcoms/zpreztorc"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

template "zshrc" do
  path "#{node['rails_box']['home']}/.zprezto/runcoms/zshrc"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

template ".zshrc.local" do
  path "#{node['rails_box']['home']}/.zshrc.local"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

link "#{node['rails_box']['home']}/.zshenv" do
  to "#{node['rails_box']['home']}/.zprezto/runcoms/zshenv"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

link "#{node['rails_box']['home']}/.zshrc" do
  to "#{node['rails_box']['home']}/.zprezto/runcoms/zshrc"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

link "#{node['rails_box']['home']}/.zlogin" do
  to "#{node['rails_box']['home']}/.zprezto/runcoms/zlogin"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

link "#{node['rails_box']['home']}/.zlogout" do
  to "#{node['rails_box']['home']}/.zprezto/runcoms/zlogout"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

link "#{node['rails_box']['home']}/.zpreztorc" do
  to "#{node['rails_box']['home']}/.zprezto/runcoms/zpreztorc"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end

link "#{node['rails_box']['home']}/.zprofile" do
  to "#{node['rails_box']['home']}/.zprezto/runcoms/zprofile"
  owner node['rails_box']['owner']
  group node['rails_box']['group']
  mode "0644"
end
