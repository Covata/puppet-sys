# Installs the wget utility.
class sys::wget (
  $ensure   = "installed",
  $package  = $sys::wget::params::package,
  $source   = $sys::wget::params::source,
  $provider = $sys::wget::params::provider,
) inherits sys::wget::params {
  package { $package:
    ensure   => $ensure,
    provider => $provider,
    source   => $source,
  }
}