RSpec.describe 'short syntax' do
  subject { 5 }

  context 'classic syntax' do
    it 'should be equal to 5' do
      expect(subject).to eq(5)
    end
  end

  context 'short one liner syntax' do
    it { is_expected.to eq(5), 'expected something else' }
  end

end

=begin
  is_expected always refers to subject.
  is_expected = expect(subject) 
=end
