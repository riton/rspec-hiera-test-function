#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class site_foo::params
#
# This class is meant to be called from site_foo
# It sets variables according to platform
#
class site_foo::params {
  case $::osfamily {
    'RedHat', 'Amazon': {
      case $::operatingsystemmajrelease { 
        6, 7: {
          # available to all roles
          $global_param         = 'foo'
          # available to all roles implementing profile "myprof"
          $profile_myprof_param = 'bar'
          # available to role "myrole"
          $role_myrole_param    = 'baz'
        }
        default: {
          fail("operatingsystemmajrelease `${::operatingsystemmajrelease}` not supported")
        }
      }
    }
    'Debian': {
        $global_param         = 'foo'
        $profile_myprof_param = 'bar'
        $role_myrole_param    = 'baz'
    }
    default: {
      fail("osfamily `${::osfamily}` not supported")
    }
  }
}

# vim: ft=puppet
