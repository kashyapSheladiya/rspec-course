=begin
  The contain_exactly matcher provides a way to test arrays against each other in a way
  that disregards differences in the ordering between the actual and expected array. 
=end

RSpec.describe 'contain excatly matcher' do
  subject { [1,2,3] }

  describe 'long form syntax' do
    it 'should check for the presense of all elements' do
      expect(subject).to contain_exactly(1,2,3)
      expect(subject).to contain_exactly(2,3,1)
      expect(subject).to contain_exactly(1,3,2)
    end
  end

  describe 'short form syntax' do
    it { is_expected.to contain_exactly(1,2,3) }
    it { is_expected.to contain_exactly(2,3,1) }
    it { is_expected.to contain_exactly(1,3,2) }

    it { is_expected.not_to contain_exactly(1,3,2,4) }
    it { is_expected.not_to contain_exactly(1,3,2,3) }
  end
end
