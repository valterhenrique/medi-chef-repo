# # encoding: utf-8

# Inspec test for recipe medi-audit-cis::1-initial-setup

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# 1.1.1.1 Ensure mounting of cramfs filesystems is disabled (Scored)
describe command('modprobe -n -v cramfs') do
  its('stdout'){ should match /install \/bin\/true/ }
end

describe command('lsmod | grep cramfs') do
  its('stdout'){ should eq '' }
end

# 1.1.1.2 Ensure mounting of freevxfs filesystems is disabled (Scored)
describe command('modprobe -n -v freevxfs') do
  its('stdout'){ should match /install \/bin\/true/ }
end

describe command('lsmod | grep freevxfs') do
  its('stdout'){ should eq '' }
end

# 1.1.1.3 Ensure mounting of jffs2 filesystems is disabled (Scored)
describe command('modprobe -n -v jffs2') do
  its('stdout'){ should match /install \/bin\/true/ }
end

describe command('lsmod | grep jffs2') do
  its('stdout'){ should eq '' }
end

# 1.1.1.4 Ensure mounting of hfs filesystems is disabled (Scored)
describe command('modprobe -n -v hfs') do
  its('stdout'){ should match /install \/bin\/true/ }
end

describe command('lsmod | grep hfs') do
  its('stdout'){ should eq '' }
end

# 1.1.1.5 Ensure mounting of hfsplus filesystems is disabled (Scored)
describe command('modprobe -n -v hfsplus') do
  its('stdout'){ should match /install \/bin\/true/ }
end

describe command('lsmod | grep hfsplus') do
  its('stdout'){ should eq '' }
end

# TODO: 1.1.1.6 Ensure mounting of squashfs filesystems is disabled (Scored)

# 1.1.1.7 Ensure mounting of udf filesystems is disabled (Scored)
describe command('modprobe -n -v udf') do
  its('stdout'){ should match /install \/bin\/true/ }
end

describe command('lsmod | grep udf') do
  its('stdout'){ should eq '' }
end

# TODO: to continue developing more tests
