node default {

file {'helloworld':
  path => '/tmp/helloworld',
  ensure => present,
  mode => 0640,
  content => "Helloworld via puppet ! "
}
}

node server0 {
package {'tmux':
  ensure => installed,
  name => "tmux"

}
}
