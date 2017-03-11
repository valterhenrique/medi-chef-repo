#
# Cookbook:: medi-base
# Recipe:: users
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node['medi-base']['groups'].each do |group|
   users_manage group do
     action [ :remove, :create ]
     data_bag 'users'
   end
 end
