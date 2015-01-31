#! /usr/bin/env ruby -S rspec

require 'spec_helper'

describe Puppet::Parser::Functions.function(:test_hiera), :focus => false do
  let(:scope) { PuppetlabsSpec::PuppetInternals.scope }

  describe 'useless' do

    include_context "hieradata"
    
    it 'still useless' do
        v = scope.function_test_hiera([])
    end
  end
end
