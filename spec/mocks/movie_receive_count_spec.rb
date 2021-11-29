class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'Hey, How are you doing?'
  end

  def fall_off_ladder
    'No, Please contact my manager.'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

=begin
helps to count excatly amout of times a method or an action is called.
i.e. act method should be called twice, and to make sure if it is called twice.
=end

RSpec.describe Movie do
  let(:actor) { double('X man', { ready?: true, act: 'Hey, How are you doing?', fall_off_ladder: 'No, Please contact my manager.', light_on_fire: false }) }

  subject { described_class.new(actor) }

  describe 'start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(actor).to receive(:fall_off_ladder).once
      # expect(actor).to receive(:fall_off_ladder).exactly(1).times
      # expect(actor).to receive(:fall_off_ladder).at_most(1).times
      expect(actor).to receive(:fall_off_ladder).at_least(1).times

      expect(actor).to receive(:act).twice
      expect(actor).to receive(:ready?).at_most(1).times
      expect(actor).to receive(:light_on_fire).exactly(1).times
      subject.start_shooting
    end
  end
end
