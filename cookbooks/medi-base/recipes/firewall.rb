#
# Cookbook:: medi-base
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.


firewall_rule "open SSH port" do
  port 22
end
