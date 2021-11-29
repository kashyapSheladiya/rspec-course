RSpec.describe 'nested before and after hooks' do
  before(:context) do
    puts 'Outer before-context'
  end

  before(:example) do
    puts 'Outer before-example'
  end

  it 'does some mathematical test' do
    expect(2+2).to eq(4)
  end

  context 'some statistical operations' do
    before(:context) do
      puts 'Inner before-context'
    end
  
    before(:example) do
      puts 'Inner before-example'
    end

    it 'performs addition' do
      expect(2+2).to eq(4)
    end

    it 'performs substraction' do
      expect(6-2).to eq(4)
    end
  end
end
