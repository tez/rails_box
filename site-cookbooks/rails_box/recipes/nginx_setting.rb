# Cookbook Name:: rails_box
# Recipe:: nginx_setting
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#
directory "/var/www/awesome-events" do
  action :create
  owner "ops"
  recursive true
end


template "/etc/nginx/sites-available/default" do
  action :create
  source "default.conf.erb"
  notifies :reload, "service[nginx]"
end
