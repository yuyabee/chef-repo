#
# Cookbook Name:: postgre
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/var/lib/pgsql" do
  owner "vagrant"
  group "vagrant"
  mode 00644
  action :create
end

directory "/var/lib/pgsql/data" do
  owner "vagrant"
  group "vagrant"
  mode 00644
  action :create
end

include_recipe 'postgresql::server'
include_recipe 'postgresql::client'
include_recipe 'postgresql::config_pgtune'
