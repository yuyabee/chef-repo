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
