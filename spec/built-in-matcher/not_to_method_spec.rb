# 'not_to' method of expect is complete opposite to 'to' method of expect.

RSpec.describe 'not to matcher' do
  it 'checks that two values are not equal' do
    expect(2+2).not_to eq(3)
    expect('hello').not_to eq('Hello')
    expect([1,2,3]).not_to eq([2,3,4])
  end
end
