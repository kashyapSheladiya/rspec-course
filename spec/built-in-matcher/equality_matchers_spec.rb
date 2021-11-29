RSpec.describe 'equality matcher' do
  let(:a) { 3 }
  let(:b) { 3.0 }

  describe 'eq matcher' do
    it 'tests for a values, and ignores datatypes' do
      expect(a).to eq(3.0)
      expect(b).to eq(3)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for a values, and datatypes' do
      expect(a).not_to eql(3.0)
      expect(b).not_to eql(3)
      expect(b).not_to eql(a)

      expect(a).to eql(3)
      expect(b).to eql(3.0)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [ 1, 2, 3 ] }
    let(:d) { [ 1, 2, 3 ] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d) #only checks value, both has [1,2,3]
      expect(c).to eql(d) # checks both value and datatype, both has same value and data-type.

      expect(c).to equal(e) # checks the excat same array in memory with different address name.
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(e).not_to be(d)
      expect(d).not_to be([1,2,3])
    end
  end
end
=begin
c and d variable are equal, but they are not identical.

e is both identical and equal to c, because it is pointing to same variable at certain address in memory. e and c are same array with two different names and different addresses.

equality - two excatly same objects. vs identity - same object pointing to same address.

identity means the two excat same thing/object, and same object in the memory.

equality means the two thing looks the excat same, but having two objects stored in different memory.

equality checks, two things are excat equal.
identity checks, two things are excat same.
=end
