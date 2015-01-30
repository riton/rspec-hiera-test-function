#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class site_foo::role::myrole
# 
# This is a "Site role" class. All "role" classes should include the base "profile" class
# which in turn composes the technology classes
# 
# Remember:
# Compose resources into "technology" classes
# Compose "technology" classes into "profile" classes
# Compose "profile" classes into "role" classes
#

class site_foo::role::myrole inherits ::site_foo::role
{
  # we may need global params here
  $global_param = $site_foo::global_param
  # we probably need our targeted params here
  $role_myrole_param = $site_foo::role_myrole_param
  
  # compose profiles here
  include ::site_foo::profile::myprof
}

# vim: ft=puppet
