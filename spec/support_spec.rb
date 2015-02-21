require 'spec_helper'

describe RSpec::Puppet::Support do
  subject do
    klass = Class.new do
      include RSpec::Puppet::Support
    end
    klass.new
  end

  describe '#setup_puppet' do
    it 'sets Puppet[:parser] to "current" by default' do
      subject.setup_puppet
      expect(Puppet[:parser]).to eq("current")
    end
    it 'reads the :parser setting' do
      allow(subject).to receive(:parser).and_return("future")
      subject.setup_puppet
      expect(Puppet[:parser]).to eq("future")
    end
    it 'sets Puppet[:module_repository] to puppetlabs forge by default' do
      subject.setup_puppet
      expect(Puppet[:module_repository]).to eq("https://forgeapi.puppetlabs.com")
    end
    it 'reads the :module_repository setting' do
      allow(subject).to receive(:module_repository).and_return("http://puppet-library.example.com")
      subject.setup_puppet
      expect(Puppet[:module_repository]).to eq("http://puppet-library.example.com")
    end
  end
end
