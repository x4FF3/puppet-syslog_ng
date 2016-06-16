# == Define: syslog_ng::source
#
# This define configures a single log definition in the syslog_ng configuration file
#
# === Parameters
#
define syslog_ng::log (
  $destinations,
  $sources,
  $filters=undef,
  ){

  concat::fragment { "/etc/syslog-ng/syslog-ng.conf-main-log-${title}":
    target  => '/etc/syslog-ng/syslog-ng.conf',
    content => template("${module_name}/log.erb"),
    order   => 5,
  }
}
