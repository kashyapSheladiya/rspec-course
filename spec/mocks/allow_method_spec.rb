RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
    # it doesn't matter what you pass as an argument, but it will always return 15 as the method has been stubed and expected to return certain value.
    expect(calculator.add(1,2)).to eq(15)
    expect(calculator.add('hello')).to eq(15)
    expect(calculator.add(-1, -2)).to eq(15)
  end

  it 'can stub one or method on a real object' do
    arr = [1, 2, 3]
    # let's stub a method on real object of array, 
    # .sum metheds return the addition of all the elements in an array.
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)
    # sum of all elements in array [1,2,3] is 6, but we will always need to equalize it with 10, as the .sum method is stubbed on real object.
    # all other methods on array will function as normal.

    expect(arr.length).to eq(3)
  end

  it 'can return multipple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)

    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to eq(nil)
  end
end
