require 'spec_helper'

# let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
# hiera = Hiera.new(:config => hiera_config)

os_fixtures = @os_fixtures

describe 'site_foo::role::myrole' do
  context 'supported operating systems' do
    os_fixtures.each do |osname, osfixtures|
      describe "without any parameters" do
        params = osfixtures[:params]
        describe "on #{osname}" do
          let(:facts) do
            osfixtures[:facts]
          end
          it { should compile.with_all_deps }
          it { should contain_class('site_foo::role') }
          it { should contain_class('site_foo::profile::base') }
          it { should contain_class('site_foo::profile::myprof') }
          it { should contain_notify("site_foo::profile::base #{params[:global_param]}") }
          it { should contain_notify("site_foo::profile::myprof #{params[:global_param]} #{params[:profile_myprof_param]}") }
          it { should contain_notify("site_foo::profile::myprof hiera marche bien") }
        end
      end
    end
  end
end

# vim: ft=ruby
