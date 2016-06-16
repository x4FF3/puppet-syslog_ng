# == Define: syslog_ng::source
#
# This define configures a single filter definition in the syslog_ng configuration file
#
# === Parameters
#
define syslog_ng::filter ( $definition ){

  $type = 'filter'

  concat::fragment { "/etc/syslog-ng/syslog-ng.conf-main-filter-${title}":
    target  => '/etc/syslog-ng/syslog-ng.conf',
    content => template("${module_name}/statement.erb"),
    order   => 3,
  }
}
