# subjects can also be explicitly define as per requirement.
# whenever subject is explicitly defined, it will always instantiate the defined subject.
# subject can also be given name i.e. subject(:name) do {} end
# for a good code, subject should not be given name, if wanted to use multiple instance of class 'let' should be used. 

RSpec.describe Hash do
  subject do
    { a: 1, b: 2 }
  end

  it 'has initially tw key-value pair' do
    expect(subject.length).to eq(2)  
  end

  context 'nested example' do
    it 'should have 2 key-value pair' do
      expect(subject.length).to eq(2)
    end
  end
end
