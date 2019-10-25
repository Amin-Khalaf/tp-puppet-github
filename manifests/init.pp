# vim: set ts=2 sw=2 et: 
node default {

file {'/etc/motd':
  path => '/etc/motd',
  content => "Helloworld via puppet ! "
  }
}

node server0 {
  package {'tmux':
    ensure => installed,
    name => "tmux"
  }

  package {'tree':
    ensure => installed,
  } 
  
  package {'apache2':
    ensure => installed,
  }
}
