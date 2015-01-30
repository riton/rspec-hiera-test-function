#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class site_foo::role
#
# This is the role base class which will be inherited by all "role" classes
#
# Remember:
# Compose resources into "technology" classes
# Compose "technology" classes into "profile" classes
# Compose "profile" classes into "role" classes
#
class site_foo::role
{
  # we may need the init class' parameters
  include ::site_foo
  $global_param = $::site_foo::global_param
  
  # validate parameters here
  #  e.g.
  # validate_array($global_param)

  # implement base profile
  include ::site_foo::profile::base
}

# vim: ft=puppet
