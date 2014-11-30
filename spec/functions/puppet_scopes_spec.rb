require 'spec_helper'

describe 'get_resource' do

  context 'called on top scope' do
    it { should run.with_params('any').and_return(['Class','Main']) }
  end

  context 'called on node' do
    let(:node) { 'testhost_a' }
    it { should run.with_params('any').and_return(['Node','testhost_a']) }
  end

end

