=begin
shared_context is a method of RSpec, which can used to write reusable RSpec context.

shared context can be imported or used using include_context.

shared_context a method accepts the argument, as a name of context and that that name can be used to include_context wherever needed.
=end

RSpec.shared_context 'common' do
  before do
    @food = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example shared context' do
  include_context 'common'

  it 'should be empty array of food' do
    expect(@food.length).to eq(0)
    @food << 'shushi'
    expect(@food.length).to eq(1)
  end

  it 'calling helper method' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example shared context' do
  include_context 'common'

  it 'using common let variable' do
    expect(some_variable).to eq([1, 2, 3])
  end
end
