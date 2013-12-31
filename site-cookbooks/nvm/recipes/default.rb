#
# Cookbook Name:: nvm
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['nvm']['dependencies'].each do |pkg|
	package pkg
end

directory "#{node['nvm']['install_path']}" do
	action :create
	owner node['main_user']
	group node['main_group']
	mode 0755
end

git "#{node['nvm']['install_path']}" do
	repository node['nvm']['git_repository']
	action :sync
end

template '/etc/profile.d/nvm.sh' do
	source 'nvm.sh.erb'
	mode 0755
end
