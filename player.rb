class Player
  attr_accessor :hand, :hand_value
  def initialize
      @hand = []
      @hand_value = 0
  end

  def hit(n=1)
    n.times do 
        card = $deck.draw
        puts Card::FACE_OPTIONS[card.num]
        @hand_value == 0 ? @hand_value = card.num : @hand_value += card.num
        @hand << card
    end
  end

  def to_s
    puts "#{@hand.to_s}, total value #{@hand_value}"
  end
end