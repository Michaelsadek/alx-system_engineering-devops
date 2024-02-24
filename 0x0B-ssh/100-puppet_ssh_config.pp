#!/usr/bin/env bash
# Using puppet to conntect without password
file { '/etc/ssh/ssh_config':
 ensure =>,
}

file_line { 'Turn off passwd auth':
 path	=> '/etc/ssh/ssh_config',
 line	=> 'PasswordAuthentication no',
 match	=> '^#PasswordAuthentication',
}

file_line { 'Declare identity file':
 path	=> '/etc/ssh/ssh_config'
 line	=> 'IdentityFile ~/.ssh/school',
 match	=> '^#IdentityFile',
}
