name 'medi-base'
maintainer 'Valter Henrique'
maintainer_email 'valterhenrique85@gmail.com'
license 'all_rights'
description 'Installs/Configures medi-base'
long_description 'Installs/Configures medi-base'
version '0.1.0'

depends 'apt', '~> 6.0'
depends 'build-essential', '~> 8.0'
depends 'application_git', '~> 1.1'
depends 'chef-client', '~> 7.2'
depends 'firewall', '~> 2.5'
depends 'hostnames', '~> 0.4'
depends 'locale', '~> 2.0'
depends 'nrpe', '~> 1.6'
depends 'ntp', '~> 3.3'
depends 'poise-python', '~> 1.5'
depends 'ssh-hardening', '~> 2.0'
depends 'sudo', '~> 3.3'
depends 'timezone_lwrp', '~> 0.1'
depends 'users', '~> 4.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/valterhenrique/medi-chef-repo/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/valterhenrique/medi-chef-repo' if respond_to?(:source_url)
