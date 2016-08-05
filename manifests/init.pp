# == Class: syslog_ng
#
# This module configures syslog_ng
#
# === Parameters
#
# [*scl_root*]
#   include scl-root if working
#   default is @include "`scl-root`/system/tty10.conf"
#
# [*version*]
#    sets the version number of your syslog-ng package 
#    default is '3.3'
#
# [*dir_perm*]
#   configures default permissions for newly created directorys
#   default is '0755'
#
# [*perm*]
#   configures the default permissions for logfiles
#   default is '0640'
#
# [*use_dns*]
#   configure syslog-ng to use dns
#   valid options are 'yes' and 'no'
#   default is no
#
# [*use_fqdn*]
#   configure syslog-ng to use fqdn instead of short hostname
#   valid options are 'yes' and 'no'
#   default is yes
#
# [*frac_digits*]
#   configure syslog-ng frac_digits option
#
# [*keep_timestamp*]
#   configure syslog-ng keep_timestamp option
#
class syslog_ng (
  $version        = $::syslog_ng::params::version,
  $use_dns        = $::syslog_ng::params::use_dns,
  $use_fqdn       = $::syslog_ng::params::use_fqdn,
  $perm           = $::syslog_ng::params::perm,
  $dir_perm       = $::syslog_ng::params::dir_perm,
  $frac_digits    = $::syslog_ng::params::frac_digits,
  $keep_timestamp = $::syslog_ng::params::keep_timestamp,
  ) inherits syslog_ng::params {
  include syslog_ng::install
  include syslog_ng::config
  Class['syslog_ng::install'] -> Class['syslog_ng::config']
}
