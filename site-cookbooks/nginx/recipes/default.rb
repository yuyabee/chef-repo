#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nginx" do
  action :install
end

service "nginx" do
  supports start: true, status: true, restart: true, reload: true, stop: true
  action   [:enable, :start]
end

template "/etc/nginx/nginx.conf" do
  path     "/etc/nginx/nginx.conf"
  source   "nginx.conf.erb"
  owner    "root"
  group    "root"
  mode     0644
  notifies :reload, 'service[nginx]'
end

directory "/etc/nginx/sites-enabled/" do
  owner  "root"
  group  "root"
  mode   0777
  action :create
end

directory "/var/www/" do
  owner   node["main_user"]
  group   node["main_group"]
  mode    0777
  action  :create
end

template "/etc/nginx/sites-enabled/default.conf" do
  path     "/etc/nginx/sites-enabled/default.conf"
  source   "sites-enabled.conf.erb"
  owner    "root"
  group    "root"
  mode     0644
  notifies :reload, 'service[nginx]'
end
