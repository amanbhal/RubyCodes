=begin
Q4. A rock, paper, scissors tournament is encoded as a bracketed array of games - that is, each element can be
considered its own tournament.

[
[
  [ ["Kristen", "P"], ["Dave", "S"] ],
  [ ["Richard", "R"], ["Michael", "S"] ],
],
[
  [ ["Allen", "S"], ["Omer", "P"] ],
  [ ["David E.", "R"], ["Richard X.", "P"] ]
]
]

Under this scenario, Dave would beat Kristen (S>P), Richard would beat Michael (R>S), and then Dave and Richard
would play (Richard wins since R>S); similarly, Allen would beat Omer, Richard X. would beat David E., and Allen
and Richard X. would play (Allen wins since S>P); and finally Richard would beat Allen since R>S, that is, continue
until there is only a single winner.
1.  Write a method rps_tournament_winner that takes a tournament encoded as a bracketed array and returns the
    winner (for the above example, it should return [“Richard”, “R”]).
2.  Tournaments can be nested arbitrarily deep, i.e., it may require multiple rounds to get to a single winner.
    You can assume that the initial array is well formed (that is, there are 2N players, and each one
    participates in exactly one match per round).
=end

def rps_tournament_winner(tournament)

end