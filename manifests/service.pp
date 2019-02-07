class nginx::service (
  String $ensure = $::nginx::config_name,
  String $service_name = $::nginx::service_name,
  String $pattern = $::nginx::service_pattern,
  Boolean $enable = $::nginx::service_enable,
  Boolean $hasstatus = $::nginx::service_hasstatus,
  Boolean $hasrestart = $::nginx::service_hasrestart,
){
  service { 'nginx_service':
    ensure     => $ensure,
    name       => $service_name,
    enable     => $enable,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
    pattern    => $pattern
  }
}
