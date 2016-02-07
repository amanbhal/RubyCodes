=begin
Q3. In a game of rock-paper-scissors, each player chooses to play Rock (R), Paper (P), or Scissors (S).
The rules are: Rock beats Scissors (R>S), Scissors beats Paper (S>P), but Paper beats Rock (P>R). A
rock-paper-scissors game is encoded as a list, where each list element is a two-element list that encodes a
player’s name and a player’s strategy.

[ [ "Kristen", "P" ], [ "Pam", "S" ] ]
# => returns the list ["Pam", "S"] wins since S>P

Write a method rps_game_winner that takes a two-element list and behaves as follows:
●      If the number of players is not equal to 2, raise WrongNumberOfPlayersError.
●      If either player's strategy is something other than “R”, “P” or “S” (case-insensitive), raise
NoSuchStrategyError.
●      Otherwise, return the name and strategy of the winning player. If both players use the same strategy,
the first player is the winner.

Here is some code scaffolding:

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
 raise WrongNumberOfPlayersError unless game.length == 2
 # your code here
end
=end

def rps_game_winner(game)
  if game.length<2
    raise 'WrongNumberOfPlayersError'
  end
  if ['R','P','S','r','p','s'].include?(game[0][1])==false or ['R','P','S','r','p','s'].include?(game[1][1])==false
    raise 'NoSuchStratergyError'
  end
  judge = {'R'=>'S','S'=>'P','P'=>'R'}
  if game[1][1]==judge[game[0][1].upcase]
    return game[0]
  else
    return game[1]
  end
end
puts rps_game_winner([["Kristen","p"],["Pam","r"]])