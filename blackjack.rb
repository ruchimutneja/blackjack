require_relative 'card'
require_relative 'deck'
require_relative 'player'

class BlackJackGame
	attr_reader :winner
	BLACK_JACK_SCORE = 21
		
	def initialize
		$deck = Deck.new	
		@player = Player.new
		@dealer = Player.new
		@winner = nil
	end

	def play
		game_ends = false
		@player.hit(2)
		puts "Player's hand:"
		puts @player.to_s
		
		@dealer.hit(1)
		puts "Dealer's hand:"
		puts @dealer.to_s

		if @player.hand_value == BLACK_JACK_SCORE
			@winner = @player
		else
			loop do
			  	if @player.hand_value > BLACK_JACK_SCORE
			  		@winner = @dealer
    				break
  				end
  				puts "Hit (H) or Stand (S)?"
  				action = gets.chomp

  				if action == 'S' 
  					break
  				elsif action == 'H'
	  				@player.hit
  					if @player.hand_value > BLACK_JACK_SCORE
  						@winner = @dealer
  						game_ends = true
  						break
  					end
  					puts @player.to_s
  				end
  			end
  			while @dealer.hand_value <= 16
  				@dealer.hit
  				if @dealer.hand_value > BLACK_JACK_SCORE
  					@winner = @player
  					game_ends = true
  					break
  				end
  				puts @dealer.to_s
  			end
  			if (!game_ends && @dealer.hand_value > @player.hand_value)
  				@winner = @dealer
  			else
  				@winner = @player
  			end
		end
	end
end

blackJackGame = BlackJackGame.new
blackJackGame.play()
puts "Winner is ", blackJackGame.winner