class ProgrammingLanguage
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python')}

  it 'should have a programming language' do
    expect(language.name).to eq('Python')
  end

  context 'without argument' do
    let(:language) { ProgrammingLanguage.new } #overwritting let variable
    it 'should define default programming language' do
      expect(language.name).to eq('Ruby')
    end
  end
  
end

