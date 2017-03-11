#
# Cookbook:: medi-tracks
# Recipe:: packages
#
# Copyright:: 2017, The Authors, All Rights Reserved.

ruby_build_ruby '2.4.0' do
  prefix_path '/usr/local'
  action :install
end

package 'build-essential'
package 'libmysqlclient-dev'

include_recipe "ruby_rbenv::user"

rbenv_gem "json" do
  rbenv_version  '2.4.0'
  version '1.8.3'
  action :install
  user 'tracks'
end

rbenv_gem "bundler" do
  rbenv_version  '2.4.0'
  action :install
  user 'tracks'
end

# fix problem with git protocol
rbenv_script "use git insecure with bundlers" do
  rbenv_version "2.4.0"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle config git.allow_insecure true}
end

rbenv_script "fetch tracks gems" do
  rbenv_version "2.4.0"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle update}
end

rbenv_script "fetch tracks gems" do
  rbenv_version "2.4.0"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle install --without development test}
end

mysql2_chef_gem 'default' do
  action :install
end

mysql_service 'tracks' do
  port '3306'
  version '5.6'
  initial_root_password node['medi-tracks']['mysql']['initial_root_password']
  action [:create, :start]
end

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :socket   => '/var/run/mysql-tracks/mysqld.sock',
  :password => node['medi-tracks']['mysql']['initial_root_password']
}

mysql_database_user node['medi-tracks']['mysql']['username'] do
  connection mysql_connection_info
  database_name 'tracks'
  host 'localhost'
  password node['medi-tracks']['mysql']['password']
  action [:create, :grant]
end
