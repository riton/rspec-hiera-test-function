#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class site_foo::profile::myprof
# 
# This class is a "profile" and should compose "resource" or "technology" classes.
# It is called (composed) from "role" classes
#
class site_foo::profile::myprof
{
  # we probably need our targeted params here
  $myparam = $site_foo::profile_myprof_param
  # include here all resources that shall be in the roles composing this profile
  #  e.g.
  notify { "site_foo::profile::myprof ${::site_foo::global_param} ${myparam}": }
  $hiera_foo = hiera('hiera_foo')
  notify { "site_foo::profile::myprof hiera ${hiera_foo}": }
  # file { $myparam: ensure => present }
}

# vim: ft=puppet
