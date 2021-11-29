=begin
  The satisfy matcher is extremely flexible and can handle almost anything you want to
  specify. It passes if the block you provide returns true

  most powerful ones, because it allows us to actually create our very own assertions, our very own expectations.

  We can use the satisfied nature to check for a custom condition to be met.
=end

RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can also accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end

  it 'checks for even number' do
    expect(10).to satisfy { |num| num % 2 == 0 }
    expect(9).not_to satisfy { |num| num % 2 == 0 }
  end

  it 'checks for a greater number with message' do
    expect(10).to satisfy('be a greater number') do |num|
      num > 5
    end
  end
end
