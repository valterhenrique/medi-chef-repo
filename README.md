# Overview

Deploy Tracks, a Ruby on Rails applications using Chef.

## CHEF DK

Install/Configure [Chef DK](https://docs.chef.io/install_dk.html).
I've also developed this [script](https://gist.github.com/valterhenrique/b0d2039ca58bf5bcc81ac25b74fb52cb) on Ubuntu to ease this step.

## VirtualBox

Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

## Run

After ChefDK, VirtualBox are installed and configured, type:

    cd cookbooks/medi-tracks/
    kitchen converge

This will create a new instance on VirtualBox, doing a bootstrap using `run_list` configured in `.kitchen.yml`

After that, you can access the machine by typing:

    kitchen login


## Access

First, add a new hostname entry in your `/etc/hosts`, since we are using a development environment this step will simulate that we know the address `medi-tracks.com`:

    192.168.33.33 medi-tracks.com


After the converge step is complete, you can access the address above:

    http://medi-tracks.com

 Or just click [here](http://medi-tracks.com). And you should see Tracks website interface.

## Logs

To view the logs, you access the virtual machine, using `kitchen login` and then view the logs at
`/srv/tracks/logs`.

## Repository Directories

This repository contains several directories, and each directory contains a README file that describes what it is for in greater detail, and how to use it for managing your systems with Chef.

- `cookbooks/` - Cookbooks you download or create.
- `data_bags/` - Store data bags and items in .json in the repository.
- `roles/` - Store roles in .rb or .json in the repository.

## Next Steps

Read the README file in each of the subdirectories for more information about what goes in those directories.

## Improvements

### Extend

Develop future cookbooks/recipes using the base recipe, `medi-base`, to ensure that all systems have a minimal common setup, regarding packages, security, users, etc.

### Security

Ensure that our systems are secure and compliant using a tool like [Chef Compliance](https://www.chef.io/solutions/compliance/) for example. Continue to evolve our tests regarding [inspec](inspec.io), making sure that our system are secure and stable.

### Continuous Delivery

Create a box/template/ami in order to speed deployments. Create/deploy using containers, perhaps our application requirements can be deployed faster.

### Monitoring

After a server have been deployed to production, it should be added automatically into a monitoring system, like [Amazon CloudWatch](https://aws.amazon.com/cloudwatch) or many others like Nagios(https://nagios.com), or Zabbix (http://www.zabbix.com/), etc.

### Team

In order to engage the team, I would identify the most painful problem that they have at the moment. Present to them some tools and practices explaining how we could solve the problem. We might need to study the tools in depth in order to make a more accurate decision regarding which tool will work better for us, and for a certain project/customer, on the short/long term.

## License and Maintainer

Maintainer:: Valter Henrique (valterhenrique85@gmail.com)

License:: All rights reserved
