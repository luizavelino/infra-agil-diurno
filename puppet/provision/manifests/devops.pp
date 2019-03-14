class provision::devops {

 package { 'ansible':
  ensure => 'installed'
}

 file { '/etc/ansible/ansible.cfg':
    source => 'https://raw.githubusercontent.com/luizavelino/infra-agil-diurno/master/files/ansible.cfg'
 }

 file { '/etc/hosts':
    source => 'https://raw.githubusercontent.com/luizavelino/infra-agil-diurno/master/files/inventory'
 }
}
