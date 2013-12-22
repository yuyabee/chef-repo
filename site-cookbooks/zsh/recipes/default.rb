#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "zsh" do
  action :install
end

template "/home/#{node['main_user']}/.zshrc" do
  path    "/home/#{node['main_user']}/.zshrc"
  source  "zshrc.erb"
  owner   node['main_user']
  group   node['main_group']
  mode    0644
  action  :create_if_missing
end

user node['main_user'] do
  action  :modify
  shell   '/bin/zsh'
end

user "root" do
  action  :modify
  shell   '/bin/zsh'
end

execute "add zsh path to /etc/shells" do
  command "echo '/bin/zsh' >> /etc/shells"
  not_if  "grep '/bin/zsh' /etc/shells"
end

execute "change login shell to zsh" do
  command "chsh -s /bin/zsh #{node['main_user']}"
  not_if  "echo $SHELL" == "/bin/zsh"
end
