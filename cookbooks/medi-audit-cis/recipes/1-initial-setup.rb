#
# Cookbook:: medi-audit-cis
# Recipe:: 1-initial-setup
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# 1.1 Filesystem Configuration
# 1.1.1.1 Ensure mounting of cramfs filesystems is disabled (Scored)
# 1.1.1.2 Ensure mounting of freevxfs filesystems is disabled (Scored)
# 1.1.1.3 Ensure mounting of jffs2 filesystems is disabled (Scored)
# 1.1.1.4 Ensure mounting of hfs filesystems is disabled (Scored)
# 1.1.1.5 Ensure mounting of hfsplus filesystems is disabled (Scored)
# 1.1.1.6 Ensure mounting of squashfs filesystems is disabled (Scored)
# 1.1.1.7 Ensure mounting of udf filesystems is disabled (Scored)
# 1.1.1.8 Ensure mounting of FAT filesystems is disabled (Scored)

template '/etc/modprobe.d/CIS.conf' do
  source 'CIS.conf.erb'
end


# 1.1.2 Ensure separate partition exists for /tmp (Scored)

# 1.1.3 Ensure nodev option set on /tmp partition (Scored)

# mount -o remount,nodev /tmp

# 1.1.4 Ensure nosuid option set on /tmp partition (Scored)

# mount -o remount,nosuid /tmp

# 1.1.5 Ensure separate partition exists for /var (Scored)
# 1.1.6 Ensure separate partition exists for /var/tmp (Scored)
# 1.1.7 Ensure nodev option set on /var/tmp partition (Scored)

# mount -o remount,nodev /var/tmp

# 1.1.8 Ensure nosuid option set on /var/tmp partition (Scored)

# mount -o remount,nosuid /var/tmp

# 1.1.9 Ensure noexec option set on /var/tmp partition (Scored)

# mount -o remount,noexec /var/tmp

# 1.1.10 Ensure separate partition exists for /var/log (Scored)
# 1.1.11 Ensure separate partition exists for /var/log/audit (Scored)
# 1.1.12 Ensure separate partition exists for /home (Scored)
# 1.1.13 Ensure nodev option set on /home partition (Scored)
# 1.1.14 Ensure nodev option set on /dev/shm partition (Scored)

# mount -o remount,nodev /dev/shm

# 1.1.15 Ensure nosuid option set on /dev/shm partition (Scored)

# mount -o remount,nosuid /dev/shm

# 1.1.16 Ensure noexec option set on /dev/shm partition (Scored)

# mount -o remount,noexec /dev/shm

# 1.1.17 Ensure nodev option set on removable media partitions (Not Scored)
# 1.1.18 Ensure nosuid option set on removable media partitions (Not Scored)
# 1.1.19 Ensure noexec option set on removable media partitions (Not Scored)
# 1.1.20 Ensure sticky bit is set on all world-writable directories (Scored)
# 1.1.21 Disable Automounting (Scored)
# 1.2 Configure Software Updates
# 1.2.1 Ensure package manager repositories are configured (Not Scored)
# 1.2.2 Ensure GPG keys are configured (Not Scored)
# 1.3 Filesystem Integrity Checking
# 1.3.1 Ensure AIDE is installed (Scored)
# 1.3.2 Ensure filesystem integrity is regularly checked (Scored)
# 1.4 Secure Boot Settings
# 1.4.1 Ensure permissions on bootloader config are configured (Scored)
# 1.4.2 Ensure bootloader password is set (Scored)
# 1.4.3 Ensure authentication required for single user mode (Scored)
# 1.5 Additional Process Hardening
# 1.5.1 Ensure core dumps are restricted (Scored)
# 1.5.2 Ensure XD/NX support is enabled (Not Scored)
# 1.5.3 Ensure address space layout randomization (ASLR) is enabled (Scored)
# 1.5.4 Ensure prelink is disabled (Scored)
# 1.6 Mandatory Access Control
# 1.6.1.1 Ensure SELinux is not disabled in bootloader configuration (Scored)
# 1.6.1.2 Ensure the SELinux state is enforcing (Scored)
# 1.6.1.3 Ensure SELinux policy is configured (Scored)
# 1.6.1.4 Ensure no unconfined daemons exist (Scored)
# 1.6.2.1 Ensure AppArmor is not disabled in bootloader configuration (Scored)
# 1.6.2.2 Ensure all AppArmor Profiles are enforcing (Scored)
# 1.6.3 Ensure SELinux or AppArmor are installed (Not Scored)
# 1.7 Warning Banners
# 1.7.1.1 Ensure message of the day is configured properly (Scored)
# 1.7.1.2 Ensure local login warning banner is configured properly (Not Scored)
# 1.7.1.3 Ensure remote login warning banner is configured properly (Not Scored) .. 79
# 1.7.1.4 Ensure permissions on /etc/motd are configured (Not Scored)
# 1.7.1.5 Ensure permissions on /etc/issue are configured (Scored)
# 1.7.1.6 Ensure permissions on /etc/issue.net are configured (Not Scored)
# 1.7.2 Ensure GDM login banner is configured (Scored)
# 1.8 Ensure updates, patches, and additional security software are installed (Not Scored)
