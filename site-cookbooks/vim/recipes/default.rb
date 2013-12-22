#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Encoding.default_external = Encoding::UTF_8

package 'vim' do
  action :install
end

template "/home/#{node['main_user']}/.vimrc" do
  source  "vimrc.erb"
  path    "home/#{node['main_user']}/.vimrc"
  owner   node['main_user']
  group   node['main_group']
end
