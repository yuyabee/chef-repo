#
# Cookbook Name:: clisp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'yum::epel'

package "sbcl" do
	action :install
end
