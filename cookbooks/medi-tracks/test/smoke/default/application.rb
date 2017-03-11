# # encoding: utf-8

# Inspec test for recipe medi-tracks::application

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe user 'tracks' do
  it { should exist }
end

describe directory '/opt/tracks' do
  it { should exist }
  it { should be_owned_by 'tracks' }
  it { should be_grouped_into 'tracks' }
end

describe directory '/srv/tracks' do
  it { should exist }
  it { should be_owned_by 'tracks' }
  it { should be_grouped_into 'tracks' }
  its('mode'){ should cmp '02755' }
end
