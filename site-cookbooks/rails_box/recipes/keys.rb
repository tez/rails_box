# Cookbook Name:: rails_box
# Recipe:: keys
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rails_box::ops_user"

directory "/home/ops/.ssh" do
  action :create
  owner "ops"
  mode "0700"
end

cookbook_file "/home/ops/.ssh/id_rsa" do
  action :create
  owner "ops"
  mode "0600"
end

cookbook_file "/home/ops/.ssh/authorized_keys" do
  action :create
  owner "ops"
  mode "0600"
end
