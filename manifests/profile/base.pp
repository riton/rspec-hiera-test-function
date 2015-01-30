#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class site_foo::profile::base
#
# This class is the base "profile" and is included from all "role"
# classes
#

class site_foo::profile::base
{
  # we may need global params here
  $global_param = $site_foo::global_param
  # include here all classes that shall be in all roles
  #  e.g.
  # class { 'foo':
  #   year => $my_param
  # }
  # include here all resources that shall be in all roles
  #  e.g.
  notify { "site_foo::profile::base ${global_param}": }
}

# vim: ft=puppet
