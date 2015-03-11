# == Define: syslog_ng::destination
#
# This define configures a single destination definition in the syslog_ng configuration file
#
# === Parameters
#
define syslog_ng::destination ( $definition ){

  $type = 'destination'

  concat::fragment { "/etc/syslog-ng/syslog-ng.conf-main-source-${title}":
    target  => '/etc/syslog-ng/syslog-ng.conf',
    content => template("${module_name}/statement.erb"),
    order   => 4,
  }
}
