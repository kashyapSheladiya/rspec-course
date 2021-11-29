class Person
  def a
    sleep(3)
    'hello'
  end

  def b(x, y)
    10
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement methods that are not defined on the class' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      # instance_doublr(class_name, hash of instance_method and return value)
      # person = instance_double(Person, a: 'hello', b: 20)

      person = instance_double(Person)
      allow(person).to receive(:a).and_return('hello')
      allow(person).to receive(:b).with(1,2).and_return(20)
      expect(person.a).to eq('hello')
      expect(person.b(1,2)).to eq(20)
    end
  end
end

# instance_double can only accepts the instance methods
