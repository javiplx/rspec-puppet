require 'spec_helper'

describe 'test::classes_used' do
  it {
    expect(RSpec).to receive(:deprecate).with(:include_class, :contain_class)
    should include_class('test::bare_class')
  }
  it {
    expect(RSpec).to receive(:deprecate).with(:include_class, :contain_class)
    should include_class('test::parameterised_class')
  }

  it { should contain_class('test::lookup::deep').with_text('test') }
  it { should contain_class('test::lookup_class').with_text('test') }
  it { should contain_class('test::parameterised_class').with_text('bar') }
  it { should contain_class('test::bare_class') }
end
