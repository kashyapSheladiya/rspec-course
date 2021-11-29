=begin
Q.1
Write a compound expectation that asserts the string firetruck starts with the substring  "fire" and ends with the substring "truck".
=end

RSpec.describe 'firetruck' do
  it 'checks for start-with and end-with matcher' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

=begin
Q.2
Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.
=end

RSpec.describe 20 do
  it 'checks for even number and responds to times method' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

=begin
Q.3
Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.
=end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'checks number include and start-with' do
    expect(subject).to include(42).and start_with(4, 8, 15)
  end
end
