class Deck
  attr_accessor :cards, :cards_played

  def initialize
    @cards = []
    suits = [Card::SPADES, Card::HEARTS, Card::DIAMONDS, Card::CLUBS]
    suits.each do |suit|
      Card::FACE_OPTIONS.each do |card|
        @cards << Card.new(suit, card.first)
      end
    end
    @cards_played = []
  end

  def draw
    card = @cards.first
    @cards_played << card
    @cards.shift
    return card
  end
end