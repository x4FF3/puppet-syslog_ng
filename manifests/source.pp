# == Define: syslog_ng::source
#
# This define configures a single source definition in the syslog_ng configuration file
#
# === Parameters
#
define syslog_ng::source ( $definition ){

  $type = 'source'

  concat::fragment { "/etc/syslog-ng/syslog-ng.conf-main-source-${title}":
    target  => '/etc/syslog-ng/syslog-ng.conf',
    content => template("${module_name}/statement.erb"),
    order   => 2,
  }
}
