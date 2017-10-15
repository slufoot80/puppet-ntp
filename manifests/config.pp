class ntp::config (
  String $config_name      = $ntp::config_name,
  String $config_file_mode = $ntp::config_file_mode,
  Array[String] $servers   = $ntp::servers,
) {
  file { "/etc/${config_name }":
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => $config_file_mode,
    content => template("$module_name/ntp.conf.erb")
  }
}
