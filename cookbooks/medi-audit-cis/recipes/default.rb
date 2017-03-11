#
# Cookbook:: medi-audit-cis
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "medi-audit-cis::1-initial-setup"
include_recipe "medi-audit-cis::2-services"
include_recipe "medi-audit-cis::4-logging-and-auditing"
