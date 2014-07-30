# Cookbook Name:: rails_box
# Recipe:: sqlite3_dev
#
# Copyright 2014, tez
#
# All rights reserved - Do Not Redistribute
#
package "libsqlite3-dev" do
  package_name value_for_platform(
    %w[centos redhat suse fedora] => { default: "sqlite-devel"},
    default: "libsqlite3-dev"
  )
end
