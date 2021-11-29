=begin
  change-matcher allows us to observe the state of an object both before a method is invoked and after a method is invoked.
  This will allow us to track changes over time, modifications to state over the course of an operation or a procedure.
=end

RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    # expect { subject.push(1) }.to change { subject.length }.from(3).to(4)
    expect { subject.push(1) }.to change { subject.length }.by(1)
  end

  it 'by syntax accepts negative value as well' do
    # expect { subject.pop }.to change { subject.length }.from(3).to(2)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end

  it 'string test' do
    string = 'string'

    expect { string.reverse! }.to change{ string }.from('string').to('gnirts')
  end
end

