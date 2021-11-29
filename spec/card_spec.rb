class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


RSpec.describe Card do
  
  let(:card) { 
    card = Card.new('Ace', 'Spades') }
  let(:card2) { card = Card.new('Ace', 'Queen') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = "Queen"
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card2.suit).to eq('Queen')
  end 
end
