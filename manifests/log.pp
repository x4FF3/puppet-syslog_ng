# == Define: syslog_ng::source
#
# This define configures a single log definition in the syslog_ng configuration file
#
# === Parameters
#
define syslog_ng::log ( $sources,$filters=undef,$destinations ){

  concat::fragment { "/etc/syslog-ng/syslog-ng.conf-main-source-${title}":
    target  => '/etc/syslog-ng/syslog-ng.conf',
    content => template("${module_name}/log.erb"),
    order   => 5,
  }
}
