module Puppet::Parser::Functions
  newfunction(:test_hiera, :type => :rvalue, :doc => <<-'ENDHEREDOC') do |args|

    ENDHEREDOC

    unless Puppet::Parser::Functions.autoloader.loaded?(:hiera)
      Puppet::Parser::Functions.autoloader.load(:hiera)
    end

    function_hiera(['variable'])
  end
end
