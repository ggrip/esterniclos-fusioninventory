#include fusion inventory

class fusioninventory::service inherits fusioninventory::params {
  file { '/etc/fusioninventory/agent.cfg':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template('fusioninventory/agent.cfg.erb'),
  }

  service { $fusioninventory::params::pkgfusion :
    ensure =>  $fusioninventory::params::service_ensure,
    enable =>  $fusioninventory::params::service_enable,
  }
}