#
# Cookbook Name:: sinatra-app
# Recipe:: default
#
# Copyright 2013, Calculated Content
#
# All rights reserved - Do Not Redistribute

include_recipe 'git'
include_recipe "ruby_193"

include_recipe 'apache2'
include_recipe 'passenger_apache2'

include_recipe 's3cmd'
include_recipe 'redisio'
include_recipe 'redisio::install'
include_recipe 'redisio::enable'


app_name = node[:sinatra_app][:app_name]
server_name = node[:sinatra_app][:server_name]
# Create vhost

web_app app_name do
  server_name app_name
  docroot node[:sinatra_app][:docroot]
  template "sinatra_app.conf.erb"
  log_dir node[:apache][:log_dir]
  rack_env "production"
end

# Set file and directory perimissions
directory "#{node[:sinatra_app][:deploy_dir]}" do
  owner node[:apache][:user]
  group node[:apache][:user]
  action :create
end


gem_package "sinatra" do
  action :install
end


