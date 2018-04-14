class Card
  attr_accessor :num, :suit

  SPADES = "spades"
  HEARTS = "hearts"
  DIAMONDS = "diamonds"
  CLUBS = "clubs"

  FACE_OPTIONS = {
    "A" => 11,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "10" => 10,
    "Jack" => 10,
    "Queen" => 10,
    "King" => 10
  }

  def initialize(suit, num) 
    @num = FACE_OPTIONS[num]
    @suit = suit
  end

  def name
    @num.to_s + " of " + @suit.to_s
  end
end