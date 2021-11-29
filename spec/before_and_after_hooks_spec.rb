# In hooks before-context and after-context runs before & after each context, a block in which it is placed.
# In hooks before-example and after-example runs before & after each example present

RSpec.describe 'before and after hook' do
  before(:context) do
    puts 'Before Context'
  end

  after(:context) do
    puts 'After Context'
  end

  before(:example) do
    puts 'Before Example'
  end

  before(:example) do
    puts 'After Example'
  end

  it 'should return true if even' do
    expect(6.even?).to eq(true)
  end

  it 'should return false if odd' do
    expect(6.even?).to eq(true)
  end
end
