#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nvm'

node['nodejs']['versions'].each do |version|
	nvm_install version do
		action :create
	end

	if version == node['nodejs']['default_version']
		nvm_alias_default version do
			action :create
		end
	end
end
