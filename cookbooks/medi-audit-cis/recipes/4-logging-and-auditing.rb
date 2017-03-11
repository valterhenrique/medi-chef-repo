#
# Cookbook:: medi-audit-cis
# Recipe:: 4-logging-and-auditing
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file '/etc/hosts.allow' do
  mode '644'
end

file '/etc/crontab' do
  mode '0600'
end

%w(/etc/cron.daily /etc/cron.hourly /etc/cron.weekly /etc/cron.monthly /etc/cron.d).each do |dir|
  directory dir do
    owner 'root'
    group 'root'
    mode '0700'
  end
end

file '/etc/at.deny' do
  action :delete
  only_if {File.exist?('/etc/at.deny')}
end

%w(/etc/at.allow /etc/cron.allow).each do |new_file|
  file new_file do
    owner 'root'
    group 'root'
    mode '0600'
    action :create_if_missing
  end
end

directory '/etc/audit/' do
  owner 'root'
  group 'root'
  mode '0700'
end

template '/etc/audit/auditd.conf' do
  source 'auditd.conf.erb'
  owner 'root'
  group 'root'
  mode '0600'
end
