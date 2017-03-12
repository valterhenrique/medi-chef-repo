name 'medi-tracks'
maintainer 'Valter Henrique'
maintainer_email 'valterhenrique85@gmail.com'
license 'all_rights'
description 'Installs/Configures medi-tracks'
long_description 'Installs/Configures medi-tracks'
version '0.1.0'

depends 'ruby_build', '~> 1.0'
depends 'ruby_rbenv', '~> 1.1'
depends 'mysql2_chef_gem', '~> 1.1'
depends 'mysql', '~> 8.2'
depends 'chef_nginx', '~> 5.1'
depends 'database', '~> 6.1'

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
