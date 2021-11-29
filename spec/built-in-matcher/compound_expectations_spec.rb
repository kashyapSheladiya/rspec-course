=begin
  Matchers can be composed using 'and' or 'or' to make compound expectations.
=end

RSpec.describe 25 do
  it 'can test odd and greater than' do
    expect(subject).to  be_odd.and be > 20
  end
end

RSpec.describe 'dievision' do
  it 'can check start-with and end-with' do
    expect(subject).to start_with('di').and end_with('on')
  end

  it { is_expected.to start_with('di').and end_with('on') }
end

RSpec.describe [:india, :germany, :belgium] do
  it 'can check for a multiple possibilities' do
    expect(subject.sample).to eq(:india).or eq(:germany).or eq(:belgium)
  end
end
