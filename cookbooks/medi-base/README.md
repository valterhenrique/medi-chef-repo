# medi-base

A common cookbook that will be used in all systems.

## Requirements

### Platform:

Ubuntu 16.04.

### Cookbooks:

[apt](https://supermarket.chef.io/cookbooks/apt)
> This cookbook includes recipes to execute apt-get update to ensure the local APT package cache is up to date. There are recipes for managing the apt-cacher-ng caching proxy and proxy clients. It also includes a custom resource for pinning packages via /etc/apt/preferences.d.


[build-essential](https://supermarket.chef.io/cookbooks/build-essential)
>Installs packages required for compiling C software from source. Use this cookbook if you wish to compile C programs, or install RubyGems with native extensions. Contains a resource, 'build_essential', as as well as a default recipe that simply calls that same resource.


[application_git](https://supermarket.chef.io/cookbooks/application_git)
>A Chef cookbook to handle deploying code from git when using the application cookbook.


[chef-client](https://supermarket.chef.io/cookbooks/chef-client)
>This cookbook is used to configure a system as a Chef Client.


[firewall](https://supermarket.chef.io/cookbooks/firewall)
>Provides a set of primitives for managing firewalls and associated rules.


[hostnames](https://supermarket.chef.io/cookbooks/hostnames)
>Easy hostname, FQDN and /etc/hosts file updates. Less broken than the hostname recipe.


[locale](https://supermarket.chef.io/cookbooks/locale)
>Sets the default system locale for this system. You can see which locales are available by running locale -a.


[nrpe](https://supermarket.chef.io/cookbooks/nrpe)
>Chef cookbook to install Nagios NRPE client (was previously part of the Nagios cookbook)


[ntp](https://supermarket.chef.io/cookbooks/ntp)
>Installs and configures ntp. On Windows systems it uses the Meinberg port of the standard NTPd client to Windows.


[poise-python](https://supermarket.chef.io/cookbooks/poise-python)
>A Chef cookbook to provide a unified interface for installing Python, managing Python packages, and creating virtualenvs.


[ssh-hardening](https://supermarket.chef.io/cookbooks/ssh-hardening)
>This cookbook provides secure ssh-client and ssh-server configurations. This cookbook does not provide capabilities for management of users and/or ssh keys, please use other cookbooks for that.


[sudo](https://supermarket.chef.io/cookbooks/sudo)
>The Chef sudo cookbook installs the sudo package and configures the /etc/sudoers file.


[system](https://supermarket.chef.io/cookbooks/system)
>This cookbook is designed to provide a set of recipes and LWRPs for managing the core properties of a host's system.


[users](https://supermarket.chef.io/cookbooks/users)
>Manages OS users from databags.

## Attributes

- `node['medi-base']['ports']['allow']` - Default `[ '22' ]`, allow SSH connections.
- `node['medi-base']['ports']['deny']` - Default `[ '80' ]`, deny port 80 explicitly using firewall.
- `node['medi-base']['packages']['install']` - Default `['acl', 'awscli', 'git', 'htop', 'tree', 'vim']`, install basic packages.
- `node['medi-base']['packages']['remove']` - Default `["rpcbind"]`, remove unnecessary and risky packages.
- `node['medi-base']['groups']` - Default `['developer', 'sysadmin']`, manage users specified in data bags `users`.

## Recipes

- medi-base::default

## License and Maintainer

Maintainer:: Valter Henrique (valterhenrique85@gmail.com)

License:: All rights reserved
