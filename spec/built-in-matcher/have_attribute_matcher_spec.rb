=begin
  Use the have_attributes matcher to specify that an object's attributes match the expected   attributes
=end

class Student
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

RSpec.describe Student do
  subject { described_class.new('Prince', 15)}
  it 'checkes the proper attribute and proper value' do
    expect(subject).to have_attributes(name: 'Prince')
    expect(subject).to have_attributes(name: a_string_starting_with('Pr'))
    expect(subject).to have_attributes(age: 15)
    expect(subject).to have_attributes(age: a_value < 20)
  end

  it {is_expected.to have_attributes(name: 'Prince', age: 15)}
  it {is_expected.to have_attributes(name: 'Prince')}
  it {is_expected.to have_attributes(name: a_string_starting_with('P'))}
  it {is_expected.to have_attributes(name: a_string_ending_with('e'))}
  it {is_expected.to have_attributes(age: 15)}
  it {is_expected.to have_attributes(age: a_value < 20)}
  it {is_expected.to have_attributes(age: a_value > 10)}

  it {is_expected.not_to have_attributes(age: a_value < 10)}
  it {is_expected.not_to have_attributes(age: 11)}
  it {is_expected.not_to have_attributes(name: 'Ashish')}
end 
