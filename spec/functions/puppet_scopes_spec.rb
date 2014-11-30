require 'spec_helper'

describe 'get_resource' do

  context 'called on top scope' do
    let(:node) { '' }
    it { should run.with_params('any').and_return(['Class','Main']) }
  end

  context 'called on node' do
    let(:node) { 'testhost_a' }
    it { should run.with_params('any').and_return(['Node','testhost_a']) }
  end

  context 'called on class' do
    let(:class_scope) { 'rspec::subclass' }
    it { should run.with_params('any').and_return(['Class','Rspec::Subclass']) }
  end

end

describe 'get_module_name' do

  context 'called on top scope' do
    let(:node) { '' }
    it { should run.with_params('any').and_return('') }
  end

  context 'called on node' do
    let(:node) { 'testhost_a' }
    it { should run.with_params('any').and_return('') }
  end

  context 'called on class' do
    let(:class_scope) { 'rspec' }
    it { should run.with_params('any').and_return('rspec') }
  end

  context 'called on class' do
    let(:class_scope) { 'rspec::subclass' }
    it { should run.with_params('any').and_return('rspec') }
  end

end

