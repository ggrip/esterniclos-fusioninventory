class fusioninventory::params
{
  $pkgfusion          = 'fusioninventory-agent'
  $crondest           = '/etc/cron.daily/fusioninventory'
  $glpiserver         = 'http://localhost'
  $version            = 'latest'
  $service_ensure     = 'running'
  $service_enable     = true
  $cronscript_enable  = false
  $no_proxy           = false
  $uri                = 'plugins/fusioninventory'
}

