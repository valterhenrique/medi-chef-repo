# # encoding: utf-8

# Inspec test for recipe medi-base::services

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe service('rpcbind') do
  it { should_not be_installed}
  it { should_not be_enabled}
  it { should_not be_running}
end

describe service('chef-client') do
  it { should be_installed}
  it { should be_enabled}
  it { should be_running}
end
