# == Class: syslog_ng::params
#
# This module contains default parameters for syslog_ng
#

class syslog_ng::params {

  $use_dns   = false
  $use_fqdn  = true
  $perm      ='0640'
  $dir_perm  ='0755'

}
