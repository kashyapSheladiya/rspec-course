=begin
  Use the include matcher to specify that a collection includes one or more expected objects.
  
  It succeeds if any object of the given collection passes the specified matcher.

  This works on any object that responds to #include? (such as a string or array or hash)  
=end

RSpec.describe 'include matcher' do
  describe 'programming language' do
    it 'can check sub-string present' do
      expect(subject).to include('gra')
      expect(subject).to include('lang')
      expect(subject).to include('pro')
    end

    it { is_expected.to include('age') }
    it { is_expected.to include('m') }
    it { is_expected.to include('ngu') }

    it { is_expected.not_to include('y') }
    it { is_expected.not_to include('beg') }
  end

  describe [10, 20, 30] do
    it 'can check element in array' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(20) }
    it { is_expected.to include(20, 30) }
    it { is_expected.to include(10, 30) }

    it { is_expected.not_to include(40) }
    it { is_expected.not_to include(50, 40) }
  end

  describe ({ a: 5, b: 7, c: 9}) do
    it 'checks for key in hash' do
      expect(subject).to include(:a)
      expect(subject).not_to include(:z)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:c, :b)
    end

    it 'checks for key-value pair' do
      expect(subject).to include(a: 5)
      expect(subject).to include(a: 5, c:9)
    end

    it { is_expected.to include(:a) }
    it { is_expected.to include(a:5) }
    it { is_expected.not_to include(:u) }
  end
end
