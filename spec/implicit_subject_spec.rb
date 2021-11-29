# subject refers to instantiation of the provide class in RSpec.describe method.
# subject keyword referes to by default RSpect instantiated the object of the provided class.
# it instantiated new object for every example.
# usage of subject is similar to let(:foo) { Hash.new }

RSpec.describe Hash do

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    # subject uses the same instantiatedd object in entire example.
    subject[:some_key] = 'some value'
    expect(subject.length).to eq(1)
  end

  it 'is isolate among all example' do
    # again subject will instantiated new class in this example
    expect(subject.length).to eq(0)
  end
  
end
