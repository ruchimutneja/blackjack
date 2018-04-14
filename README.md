Objective-:  Implement a fairly simplified version of the black jack game.

Players-:
- Dealer (System)
- 1 Player

Components-:
6 card decks (52*6 = 312 cards)

Point System-:
Number cards (2 to 10) has a point value equal to the number on the card
Ace -> 11 points
Jack/Queen/King -> 10 points


Game and Terminology-:
The player plays the game against the dealer (system)
Aim of the player and the dealer is to get the maximum score <= 21
A score of exactly 21 is called Black Jack
A score of > 21 is bust
Cards are chosen randomly from all 6 decks

Start-:
1. Player places a bet for any amount 

2. Dealer give two random cards to the player and 1 card to himself. All cards are visible 
   to everyone

3. If the player gets a score of 21, let us call this black jack (e.g. Ace + Jack), the 
   player wins. If the score is greater than 21, the player loses. If the score is less than 21, move to step 4. 

4. Player makes a decision

   a. Hit - If the player chooses hit, the dealer will deal another card to the player, go back to Step 3

   b. Stand - No more card to be dealt to the player, Move to step 5


5. Now the dealer will deal another card to himself. If the dealer gets a score of 21, the 
   dealer wins. If the dealer crosses 21 (bust), player wins. If the score is <=16 repeat Step 5 (i.e. deal another card). If the score is >= 17 go to step 6

6. Compare the scores of the player and the dealer, whoever has a greater score wins
