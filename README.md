# Puppet Module site_foo
#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with site_foo](#setup)
    * [What site_foo affects](#what-site_foo-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with site_foo](#beginning-with-site_foo)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This is a Site module.
It uses a contextual profile/role model. There are two contexts:

* Site context: implements functionality at the site or business level
* Tech context: implements functionality at the technology level

Site modules provide roles and profiles

* Roles implement *many* Profiles 
* Profiles implement *many* technology modules and resources

Technology modules may also implement a role/profile model.

This particular module does *something* and this readme has obviously been at least partially left in the boilerplate state.

## Module Description

If applicable, this section should have a brief description of the technology the module integrates with and what that integration enables. This section should answer the questions: "What does this module *do*?" and "Why would I use it?"

If your module has a range of functionality (installation, configuration, management, etc.) this is the time to mention it.

## Setup

### What site_foo affects

* A list of files, packages, services, or operations that the module will alter, impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form. 

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled, etc.), mention it here. 

### Beginning with site_foo

The very basic steps needed for a user to get the module up and running. 

If your most recent release breaks compatibility or requires particular steps for upgrading, you may wish to include an additional section here: Upgrading (For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing the fancy stuff with your module here. 

```Puppet
class { 'site_foo':
  global_param => foo,
  role_myrole_param => bar,
  profile_myprof_param => baz
}
```

## Reference

Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

### Class site_foo

#### Parameters

* global_param (array): some global parameter affecting all classes. Defaults to os specific value (see `params.pp`)
* role_myrole_param (bool): some parameter affecting only role `site_foo::role::myrole`. Defaults to os specific value (see `params.pp`)
* profile_myprof_param (string): some parameter affecting only profile `site_foo::profile::myprof`. Defaults to os specific value (see `params.pp`)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

Since your module is awesome, other users will want to play with it. Let them know what the ground rules for contributing are.

### Issues

https://gitlab.in2p3.fr/cc-in2p3-puppet-service/site_foo

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You may also add any additional sections you feel are necessary or important to include here. Please use the `## ` header. 

[//]: # vim: ft=markdown
