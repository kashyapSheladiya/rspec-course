# be matcher can be used to check truthiness or falsiness of a given value using RSpec
# falsy values in ruby are only ---- false and nil.
# truthy values in ruby are ----- everything except false and nil

RSpec.describe 'truthiness and falsiness' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect([1, 2]).to be_truthy
    expect({}).to be_truthy
    expect(:variable).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy

    expect(false).not_to be_truthy
    expect(nil).not_to be_truthy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    expect(nil).to be(nil)

    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
