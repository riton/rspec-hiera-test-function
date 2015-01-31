# To test

```
$ bundle install --path=$PWD/.mybundle
$ bundle exec rake spec SPEC_OPTS='--color --format documentation --tag focus'
/usr/bin/ruby -S rspec spec/classes/site_foo_spec.rb spec/functions/test_hiera_spec.rb --color
Run options: include {:focus=>true}

site_foo
  should contain Notify[foo] with message => "bar"

test_hiera
  useless
    still useless (FAILED - 1)

Failures:

  1) test_hiera useless still useless
     Failure/Error: v = scope.function_test_hiera([])
     Puppet::ParseError:
       Could not find data item variable in any Hiera data file and no default supplied
     # ./lib/puppet/parser/functions/test_hiera.rb:10:in `real_function_test_hiera'
     # ./spec/functions/test_hiera_spec.rb:13

Finished in 0.12823 seconds
2 examples, 1 failure

Failed examples:

rspec ./spec/functions/test_hiera_spec.rb:12 # test_hiera useless still useless
/usr/bin/ruby -S rspec spec/classes/site_foo_spec.rb spec/functions/test_hiera_spec.rb --color failed
```

*Conclusion*:
* Hiera lookup from puppet code is working and uses established test hierarchy
* Hiera lookup within a puppet function does not seem to use established test hierarchy

My environment

* `ruby 1.8.7 (2013-06-27 patchlevel 374) [x86_64-linux]`
* `Bundler version 1.7.12`

Bundle list:

```
Gems included by the bundle:
  * bundler (1.7.12)
  * diff-lcs (1.2.5)
  * facter (1.7.6)
  * hiera (1.3.4)
  * hiera-puppet-helper (1.0.1)
  * json_pure (1.8.2)
  * metaclass (0.0.4)
  * mocha (1.1.0)
  * puppet (3.6.2)
  * puppet-lint (1.1.0)
  * puppet-syntax (1.4.1)
  * puppetlabs_spec_helper (0.8.2)
  * rake (10.4.2)
  * rgen (0.6.6)
  * rspec (2.99.0)
  * rspec-core (2.99.2)
  * rspec-expectations (2.99.2)
  * rspec-mocks (2.99.3)
  * rspec-puppet (2.0.0 8459e14)
```

# Hiera data

Hiera configuration file is here `spec/fixtures/hiera/hiera.yaml`.

The variable the test function is looking up is named ... `variable` and defined in file https://github.com/riton/rspec-hiera-test-function/blob/master/spec/fixtures/hiera/test.yaml.
