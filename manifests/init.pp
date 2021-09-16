#
# Configures fusioninventory-agent in host.
#

class fusioninventory (
  $cronscript_enable = $fusioninventory::params::cronscript_enable,
  $version           = $fusioninventory::params::version,
  $glpiserver        = $fusioninventory::params::server_url,
  $pkgfusion         = $fusioninventory::params::pkgfusion,
  $no_proxy          = $fusioninventory::params::proxy,
  $service_enable    = $fusioninventory::params::service_enable,
  $service_ensure    = $fusioninventory::params::service_ensure,
  $crondest          = $fusioninventory::params::crondest,
  $uri               = $fusioninventory::params::uri,
) inherits fusioninventory::params {
  include
  'fusioninventory::install'

  if ($cronscript_enable == true){
    include   'fusioninventory::cronscript'
  }

  if ($::service_enable == true){
    include   'fusioninventory::service'
  }
}
