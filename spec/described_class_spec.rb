class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'should have a king name' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end

# Instead of using class name in subject_helper or let, 'described_class' keyword should be used to use class argument passed to describe method.
