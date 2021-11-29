RSpec.describe 'comparison matcher' do
  it 'allows for comparison with built-in Ruby Operator' do
    expect(10).to be > 5
    expect(10).to be < 15

    expect(100).to be >= 100
    expect(100).to be <= 100
  end

  # here 100 acts as a subject, so one-liner syntax can be used.
  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }

    it { is_expected.not_to be > 105}
  end
end
