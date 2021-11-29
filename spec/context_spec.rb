# instance method can be written as "#method_name" and class method can be written as ".methodname" as a argument in describe method of RSpec.
# 'describe method' can also be used inplace of 'context'.

RSpec.describe "#even? method" do

  context 'with even number' do
    it 'should return true' do
      expect(6.even?).to eq(true)
    end
  end

  describe 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false), "Should return false but return true"
    end 
  end
  
end
