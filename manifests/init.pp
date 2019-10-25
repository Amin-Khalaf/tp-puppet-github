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
}
