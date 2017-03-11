# # encoding: utf-8

# Inspec test for recipe medi-base::firewall

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe port(80) do
  it { should_not be_listening }
  skip 'Ensures that not webserver is running on our base image'
end

describe port(22) do
  it { should be_listening }
  its('processes') { should include 'sshd' }
  its('protocols') { should include 'tcp' }
  its('addresses') { should include '0.0.0.0' }
end
