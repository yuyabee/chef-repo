#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'rbenv::system'

node["ruby"]["versions"].each do |version|
  rbenv_ruby    version
  rbenv_global  version
end

# should be in another file?
rbenv_gem 'bundler' do
  action :install
end
