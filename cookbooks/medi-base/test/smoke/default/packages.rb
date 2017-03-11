# # encoding: utf-8

# Inspec test for recipe medi-base::packages

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

%w(acl awscli git htop tree vim).each do |pkg|
  describe package(pkg) do
    it{ should be_installed}
  end
end

%w(rpcbind).each do |pkg|
  describe package pkg do
    it { should_not be_installed}
  end
end

describe apt("http://us.archive.ubuntu.com/ubuntu/") do
  it { should exist }
  it { should be_enabled }
end
