#
# Cookbook Name:: golang
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'yum::epel'

package "golang" do
	action :install
end

directory node["golang"]["go_path"] do
	action :create
	recursive true
	owner node["main_user"]
	group node["main_user"]
	mode 0755
end

directory node["golang"]["go_bin"] do
	action :create
	recursive true
	owner node["main_user"]
	group node["main_user"]
	mode 0755
end

template "/etc/profile.d/golang.sh" do
	source "golang.sh.erb"
	owner node["main_user"]
	group node["main_user"]
	mode 0755
end
