#
# Cookbook:: medi-tracks
# Recipe:: packages
#
# Copyright:: 2017, The Authors, All Rights Reserved.



# ruby_build_ruby '2.4.0' do
#   prefix_path '/usr/local'
#   action :install
# end

gem 'bundler' do
  action :install
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

# Create a mysql database
# mysql_database 'tracks' do
#   connection mysql_connection_info
#   action :create
# end

mysql_database_user node['medi-tracks']['mysql']['username'] do
  connection mysql_connection_info
  database_name 'tracks'
  host 'localhost'
  password node['medi-tracks']['mysql']['password']
  action [:create, :grant]
end

# mysql -uroot -p
# mysql> CREATE DATABASE tracks;
# mysql> GRANT ALL PRIVILEGES ON tracks.* TO yourmysqluser@localhost \
# IDENTIFIED BY 'password-goes-here' WITH GRANT OPTION;

# mysql_config 'tracks' do
#   source 'my_extra_settings.erb'
#   notifies :restart, 'mysql_service[foo]'
#   action :create
# end
