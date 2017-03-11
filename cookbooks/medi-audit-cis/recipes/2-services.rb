#
# Cookbook:: medi-audit-cis
# Recipe:: 2-services
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
package 'telnet' do
  action :purge
end

service 'rpcbind' do
  action [:stop, :disable]
end

service 'rsyslog' do
  action [:stop, :disable]
end
