#
# Cookbook Name:: rpmforge
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "add rpmforge" do
	command "rpm -Uhv #{node['rpmforge']['rpm_url']}"
	not_if { File.exists?("/etc/yum.repos.d/rpmforge.repo") }
end
