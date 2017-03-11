#
# Cookbook:: medi-base
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node['medi-base']['ports']['allow'].each do |prt|
  firewall_rule prt do
    command :allow
  end
end
