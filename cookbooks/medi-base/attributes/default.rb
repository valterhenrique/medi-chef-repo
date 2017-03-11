default['medi-base']['ports']['allow'] = [ '22' ]

default['medi-base']['ports']['deny'] = [ '80' ]

default['medi-base']['packages']['install'] = ['acl', 'awscli', 'git', 'htop', 'tree', 'vim']

default['medi-base']['packages']['remove'] = ["rpcbind"]

default['medi-base']['groups'] = ['developer', 'sysadmin']
