RSpec.describe Array do
  it 'starts with empty array' do
    expect(subject.length).to eq(0)
    subject << 1
    expect(subject.length).to eq(1)
  end

  it 'new example with new object' do
    expect(subject.length).to eq(0)
  end
end

=begin
  
Q. What does the subject helper method return?
A. An instance of the class under test.

Q. Why is better to pass a class argument to the describe method instead of a string with the class name?

A. With a class argument, RSpec is able to instantiate an instance of the class and make it lazily available via the subject method.

end
