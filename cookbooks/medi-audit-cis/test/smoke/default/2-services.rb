# # encoding: utf-8

# Inspec test for recipe medi-audit-cis::2-services

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('setroubleshoot') do
  it { should_not be_installed }
end

describe package('mcstrans') do
  it { should_not be_installed }
end

describe package('telnet-server') do
  it { should_not be_installed }
end

describe package('telnet') do
  it { should_not be_installed }
end

describe package('rsh-server') do
  it { should_not be_installed }
end

describe package('rsh') do
  it { should_not be_installed }
end

describe package('ypbind') do
  it { should_not be_installed }
end

describe package('ypserv') do
  it { should_not be_installed }
end

describe package('tftp') do
  it { should_not be_installed }
end

describe package('tftp-server') do
  it { should_not be_installed }
end

describe package('talk') do
  it { should_not be_installed }
end

describe package('talk-server') do
  it { should_not be_installed }
end

describe package('xinetd') do
  it { should_not be_installed }
end

describe package('xorg-x11-server-common') do
  it { should_not be_installed }
end

describe package('dhcp') do
  it { should_not be_installed }
end

describe package('openldap-servers') do
  it { should_not be_installed }
end

describe package('openldap-clients') do
  it { should_not be_installed }
end

describe package('bind') do
  it { should_not be_installed }
end

describe package('vsftpd') do
  it { should_not be_installed }
end

describe package('httpd') do
  it { should_not be_installed }
end

describe package('dovecot') do
  it { should_not be_installed }
end

describe package('samba') do
  it { should_not be_installed }
end

describe package('squid') do
  it { should_not be_installed }
end

describe package('net-snmp') do
  it { should_not be_installed }
end

describe service('chargen-dgram') do
  it {should_not be_running }
end

describe service('chargen-dgram') do
  it {should_not be_enabled }
end

describe service('chargen-stream') do
  it {should_not be_running }
end

describe service('chargen-stream') do
  it {should_not be_enabled }
end

describe service('daytime-dgram') do
  it {should_not be_running }
end

describe service('daytime-dgram') do
  it {should_not be_enabled }
end

describe service('daytime-stream') do
  it {should_not be_running }
end

describe service('daytime-stream') do
  it {should_not be_enabled }
end

describe service('echo-dgram') do
  it {should_not be_running }
end

describe service('echo-dgram') do
  it {should_not be_enabled }
end

describe service('echo-stream') do
  it {should_not be_running }
end

describe service('echo-stream') do
  it {should_not be_enabled }
end

describe service('tcpmux-server') do
  it {should_not be_running }
end

describe service('tcpmux-server') do
  it {should_not be_enabled }
end

describe service('graphical.target') do
  it {should_not be_running }
end

describe service('graphical.target') do
  it {should_not be_enabled }
end

describe service('avahi-daemon') do
  it {should_not be_running }
end

describe service('avahi-daemon') do
  it {should_not be_enabled }
end

describe service('cups') do
  it {should_not be_running }
end

describe service('cups') do
  it {should_not be_enabled }
end

describe service('nfslock') do
  it {should_not be_running }
end

describe service('nfslock') do
  it {should_not be_enabled }
end

describe service('rpcgssd') do
  it {should_not be_running }
end

describe service('rpcgssd') do
  it {should_not be_enabled }
end

describe service('rpcbind') do
  it {should_not be_running }
end

describe service('rpcbind') do
  it {should_not be_enabled }
end

describe service('rpcidmapd') do
  it {should_not be_running }
end

describe service('rpcidmapd') do
  it {should_not be_enabled }
end

describe service('rpcsvcgssd') do
  it {should_not be_running }
end

describe service('rpcsvcgssd') do
  it {should_not be_enabled }
end

describe service('firewalld') do
  it {should_not be_enabled }
end

describe service('firewalld') do
  it {should_not be_running }
end

describe service('rsyslog') do
  it {should_not be_enabled }
end

describe service('rsyslog') do
  it {should_not be_running }
end

describe service('auditd') do
  it {should_not be_enabled }
end

describe service('auditd') do
  it {should_not be_running }
end

describe service('crond') do
  it {should_not be_enabled }
end

describe service('crond') do
  it {should_not be_running }
end

# TODO: to continue developing more tests
