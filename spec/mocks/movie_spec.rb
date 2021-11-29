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
    end
  end
end

# actor = Actor.new('Brad pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:actor) { double('X man', { ready?: true, act: 'Hey, How are you doing?', fall_off_ladder: 'No, Please contact my manager.', light_on_fire: false }) }

  subject { described_class.new(actor) }

  describe 'start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(actor).to receive(:ready?)
      expect(actor).to receive(:act)
      expect(actor).to receive(:fall_off_ladder)
      expect(actor).to receive(:light_on_fire)

      subject.start_shooting
    end
  end
end
