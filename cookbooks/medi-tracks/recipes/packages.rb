#
# Cookbook:: medi-tracks
# Recipe:: packages
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# 'Prerequisites' section
ruby_build_ruby '2.2.6' do
  prefix_path '/usr/local'
  action :install
end

# package 'build-essential'
# package 'libmysqlclient-dev'

# TODO: (improvement)
# Make tracks' user to use the same ruby installed on system?

include_recipe "ruby_rbenv::user"

# rbenv_gem "json" do
#   rbenv_version  '2.2.6'
#   version '1.8.3'
#   action :install
#   user 'tracks'
# end

rbenv_gem "bundler" do
  rbenv_version  '2.2.6'
  action :install
  user 'tracks'
end

# 'Set up the database' section

firewall_rule "open MySQL port" do
  port 3306
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

mysql_database 'tracks' do
  connection mysql_connection_info
  action :create
end

mysql_database_user node['medi-tracks']['mysql']['username'] do
  connection mysql_connection_info
  database_name 'tracks'
  host 'localhost'
  password node['medi-tracks']['mysql']['password']
  action [:create, :grant]
end

## fix problem with mysql.sock | https://goo.gl/oNHn8s

link '/var/run/mysqld/mysqld.sock' do
  to '/var/run/mysql-tracks/mysqld.sock'
end

# 'Install dependencies' section

## fix problem with git protocol
rbenv_script "use git insecure with bundlers" do
  rbenv_version "2.2.6"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle config git.allow_insecure true}
end

# rbenv_script "fetch tracks gems" do
#   rbenv_version "2.2.6"
#   user          "tracks"
#   group         "tracks"
#   cwd           "/srv/tracks"
#   code          %{bundle update}
# end

rbenv_script "fetch tracks gems" do
  rbenv_version "2.2.6"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle install --without development test}
end

# 'Populate your database with the Tracks schema' section
rbenv_script "fetch tracks gems" do
  rbenv_version "2.2.6"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle exec rake db:migrate RAILS_ENV=production}
end

# 'Precompile assets' section
rbenv_script "fetch tracks gems" do
  rbenv_version "2.2.6"
  user          "tracks"
  group         "tracks"
  cwd           "/srv/tracks"
  code          %{bundle exec rake assets:precompile RAILS_ENV=production}
end

# Open port for WebBrick
firewall_rule "open MySQL port" do
  port 3000
end
