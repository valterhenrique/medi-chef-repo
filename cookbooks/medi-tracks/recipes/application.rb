#
# Cookbook:: medi-tracks
# Recipe:: application
#
# Copyright:: 2017, The Authors, All Rights Reserved.

group node['medi-tracks']['group']
user node['medi-tracks']['user'] do
  comment 'Tracks application user'
  group node['medi-tracks']['group']
  system true
  shell node['medi-tracks']['shell']
  home node['medi-tracks']['home']
  manage_home true
end

directory  node['medi-tracks']['app'] do
  owner 'tracks'
  group 'tracks'
  mode '2755'
end

# 'Get Tracks' section
git node['medi-tracks']['app'] do
  repository node['medi-tracks']['repository']
  revision 'master'
  user node['medi-tracks']['user']
  group node['medi-tracks']['group']
  action :checkout
end

# 'Configure variables' section
template node['medi-tracks']['app']+'/config/database.yml' do
  owner 'tracks'
  group 'tracks'
  mode '0600'
  source 'database.yml.erb'
end

template node['medi-tracks']['app']+'/config/site.yml' do
  owner 'tracks'
  group 'tracks'
  mode '0600'
  source 'site.yml.erb'
end
