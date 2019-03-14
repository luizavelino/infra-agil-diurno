class provision {

 exec { 'time-zone':
  command => '/usr/bin/timedatectl set-timezone "America/Sao_Paulo"'

  }

 $packages = ['vim', 'git', 'wget', 'curl', 'telnet']
 package { $packages:
  ensure => installed
 }

}
