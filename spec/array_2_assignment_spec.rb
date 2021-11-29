RSpec.describe Array do
  subject(:sally) do
    [ 1, 2 ]
  end

  it 'should have initially 2 elements' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  context 'inital array' do
    it 'should instantiate object on each call' do
      expect(sally.length).to eq(2)
      expect(sally).to eq(subject)
    end
  end
end
