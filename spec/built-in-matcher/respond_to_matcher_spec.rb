=begin
  respond_to matcher allows us to verify that an object can respond to a given method.
=end

class Tea
  def drink
    'super'
  end

  def discard
    'OOPS'
  end

  def purchase(number)
    "I would like to purchase #{number} cups."
  end
end


RSpec.describe Tea do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
  end

  it 'can also confirms the number of argument' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end

