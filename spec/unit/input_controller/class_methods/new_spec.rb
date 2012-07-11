require 'spec_helper'

describe Conformitas::InputController,'#new' do
  subject { object.new(input) }

  let(:object) do
    class TestInputController
      include ::Conformitas::InputController
    end
  end

  context 'when input is not an hash' do
    let(:input) { 'foo' }

    its(:original_attributes) { should eql('foo') }
    its(:attributes) { should eql({}) }
  end
end
