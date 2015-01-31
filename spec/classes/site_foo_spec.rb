#! /usr/bin/env ruby -S rspec

require 'spec_helper'

describe 'site_foo', :focus => true do
  include_context "hieradata"
  
  it { should contain_notify("foo").with_message("bar") }
end
