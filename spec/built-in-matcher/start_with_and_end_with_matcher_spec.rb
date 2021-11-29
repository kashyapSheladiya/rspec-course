=begin
  Use the start_with matcher to specify that a string or array starts with the expected
  characters or elements.

  Use the end_with matcher to specify that a string or array ends with the expected
  characters or elements.
=end

RSpec.describe 'start-with and end-with matcher' do
  describe 'knowledge' do
    it 'should check for substring at the start or end' do
      expect(subject).to start_with('kno')
      expect(subject).to start_with('know')
      expect(subject).not_to start_with('xx')
      expect(subject).not_to start_with('owl')

      expect(subject).to end_with('ge')
      expect(subject).to end_with('edge')
      expect(subject).not_to end_with('abc')
      expect(subject).not_to end_with('rte')
    end

    it { is_expected.to start_with('k')}
    it { is_expected.to start_with('knowled')}
    it { is_expected.not_to start_with('p')}

    it { is_expected.to end_with('owledge')}
    it { is_expected.to end_with('e')}
    it { is_expected.not_to end_with('p')}
  end

  describe [:a, :b, :c, :d] do
    it 'should check for start and end element of array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).not_to start_with(:c)
      expect(subject).not_to start_with(:c, :d)

      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
      expect(subject).not_to end_with(:b)
      expect(subject).not_to end_with(:a, :b)
    end
    it { is_expected.to start_with(:a)}
    it { is_expected.to start_with(:a, :b)}
    it { is_expected.not_to start_with(:p)}

    it { is_expected.to end_with(:d)}
    it { is_expected.to end_with(:c, :d)}
    it { is_expected.not_to end_with(:x)}
  end
end
