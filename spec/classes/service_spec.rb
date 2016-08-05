require 'spec_helper'
describe 'syslog_ng::service' do

  context 'with defaults for all parameters' do
    it { should contain_class('syslog_ng::service') }

    it { should contain_service('syslog-ng').with_ensure("running") }
  end
end
