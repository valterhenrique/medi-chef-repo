#
# Cookbook:: medi-base
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "medi-base::firewall"
include_recipe "medi-base::packages"
include_recipe "medi-base::services"
include_recipe "medi-base::users"
