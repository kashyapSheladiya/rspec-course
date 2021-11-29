=begin
  shared_examples is a method of RSpec, which can be used to write a common examples, which can be shared among multiple RSpecs.

  to use shared_examples, include_examples method of RSpec should be used in the test.
  
  Shared Examples can also be written in different files and used wherever it is needed.

  shared_examples method accepts one argument as a name of example, and that name of the example can be used to call a include_examples.
=end



RSpec.shared_examples 'a Ruby object with 3 elements' do
  it 'should return length to 3' do
    expect(subject.length).to eq(3)
  end
end


RSpec.describe Array do
  subject { [ 1, 2, 3 ] }
  include_examples 'a Ruby object with 3 elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'a Ruby object with 3 elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with 3 elements'
end

class Test
  def length
    3
  end
end

RSpec.describe Test do
  subject { described_class.new }
  include_examples 'a Ruby object with 3 elements'
end



