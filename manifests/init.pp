class users {
user { 'fundamentals':
ensure => present,
# password => 'puppet8#labs', # Windows requires a plain text password
# groups => ['Users'], # Display in Windows Control Panel
}
include users
}

class skeleton {
file { '/etc/skel':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0755',
}
file { '/etc/skel/.bashrc':
ensure => file,
owner => 'root',
group => 'root',
mode => '0644',
source => 'puppet:///modules/skeleton/bashrc',
}
}
