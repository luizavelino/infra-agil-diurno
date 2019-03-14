class provision::docker {

  package { 'docker';
   ensure => 'installed'
}

 service { 'docker':
   ensure => 'running'
}

  exec {'docker-alpine':
    command => '/usr/bin/docker pull alpine'
 }

}
