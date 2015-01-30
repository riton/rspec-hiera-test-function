#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class: site_foo
#
# Full description of class site_foo here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class site_foo (
  $global_param = $site_foo::params::global_param,
  $profile_myprof_param = $site_foo::params::profile_myprof_param,
  $role_myrole_param = $site_foo::params::role_myrole_param,
) inherits site_foo::params {

  # validate parameters here
  #  e.g.
  # validate_array($global_param)
  # validate_bool($profile_myprof_param)
  # validate_string($role_myrole_param)

  # do other things which need to be done on all agents
  #  e.g.
  # include some_class

}

# vim: ft=puppet
