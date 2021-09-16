class fusioninventory::install inherits fusioninventory::params {

  case $facts['os']['family'] {
    'RedHat', 'CentOS':  {
      package {  $fusioninventory::params::pkgfusion:
        ensure => $fusioninventory::params::version,
      }
    }
    /^(Debian|Ubuntu)$/: {
      package {  $fusioninventory::params::pkgfusion:
        ensure => $fusioninventory::params::version,
      }
    }
    default:             { warning('This fusioninventory module does not yet work on your OS.') }
  }

}


