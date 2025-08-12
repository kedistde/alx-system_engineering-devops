# 100-puppet_ssh_config.pp
# Configures SSH client to use private key and disable password authentication

file { '/etc/ssh/ssh_config':
  ensure => file,
}

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^    IdentityFile',
  after  => '^Host \*',
}

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  match  => '^    PasswordAuthentication',
  after  => '^Host \*',
}
