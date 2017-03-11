#
# Cookbook:: medi-base
# Recipe:: packages
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

node['medi-base']['packages']['install'].each do |pkg|
  package pkg do
    action :install
  end
end

node['medi-base']['packages']['remove'].each do |pkg|
  package pkg do
    action :purge
  end
end

package 'rpcbind' do
  action :remove
end
