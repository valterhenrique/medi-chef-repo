# # encoding: utf-8

# Inspec test for recipe medi-audit-cis::4-logging-and-auditing

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# TODO: Create test for the following directories
# /tmp, /var, /var/tmp, /var/log, /var/log/audit, /home

describe file('/run/shm') do
  it {should be_mounted(options: { nodev: true })}
  it {should be_mounted(options: { nosuid: true })}
  it {should be_mounted(options: { noexec: true })}
end

describe file('/etc/hosts.allow') do
  it {should be_file}
  its('mode'){ should cmp '0644'}
end

describe file('/etc/hosts.deny') do
  it {should be_file}
  # TODO : check if this is really necessary
  # its('content'){ should match /ALL: ALL/ }
  its('mode') { should cmp '0644' }
end

describe file('/etc/rsyslog.d/50-default.conf') do
  its('content'){ should match(/\/var\/log\/auth.log$/) }
  its('content'){ should match(/\/var\/log\/cron.log$/) }
  its('content'){ should match(/\/var\/log\/daemon.log$/) }
  its('content'){ should match(/\/var\/log\/kern.log$/) }
  its('content'){ should match(/\/var\/log\/lpr.log$/) }
  its('content'){ should match(/\/var\/log\/mail.err$/) }
  its('content'){ should match(/\/var\/log\/mail.info$/) }
  its('content'){ should match(/\/var\/log\/mail.log$/) }
  its('content'){ should match(/\/var\/log\/mail.warn$/) }
  its('content'){ should match(/\/var\/log\/syslog$/) }
  its('content'){ should match(/\/var\/log\/user.log$/) }
end

describe file('/etc/audit/auditd.conf') do
  its('content'){ should match(/max_log_file = 30$/)}
  its('content'){ should match(/space_left_action = email$/)}
  its('content'){ should match(/action_mail_acct = root$/)}
  its('content'){ should match(/admin_space_left_action = halt$/)}
  its('content'){ should match(/max_log_file_action = keep_logs$/)}
end

describe file('/etc/crontab') do
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0600'}
end

describe file('/etc/cron.hourly') do
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0700'}
end

describe file('/etc/cron.daily') do
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0700'}
end

describe file('/etc/cron.weekly') do
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0700'}
end

describe file('/etc/cron.monthly') do
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0700'}
end

describe file('/etc/cron.d') do
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0700'}
end

describe file('/etc/at.deny') do
  it {should_not exist}
end

describe file('/etc/at.allow') do
  it {should be_file}
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0600'}
end

describe file('/etc/cron.deny') do
  it {should_not be_file}
end

describe file('/etc/cron.allow') do
  it {should be_file}
  it {should be_owned_by('root')}
  it {should be_grouped_into('root')}
  its('mode'){ should cmp '0600'}
end

# TODO: to continue developing more tests
