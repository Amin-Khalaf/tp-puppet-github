# vim: set ts=2 sw=2 et: 

node default {
  packgage {'make':
    ensure => installed,
  }
  package {'tree':
    ensure => installed,
  }

}

class packages_wiki {

  $wiki_dep = ['apache2','php7.3']
  package { $wiki_dep: ensure => 'installed'}

}

node server0 {
 class {packages_wiki:}

}
