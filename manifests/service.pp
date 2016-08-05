# == Class: syslog_ng::install
#
# This module installs syslog_ng
#

class syslog_ng::service {
  service {'syslog-ng':
    ensure => running,
  }
}
