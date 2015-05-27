# Cookbook Name:: rails_box
# Recipe:: ops_user
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#

user "ops" do
  action [:create, :manage]
  supports manage_home: true
  comment "Operation User"
  home "/home/ops"
  shell "/bin/bash"
  password "ops"
end
