class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each { |player, throw| raise NoSuchStrategyError unless throw =~ /[rps]/i }
  win = ["rs", "sp", "pr", "rr", "pp", "ss"]
  win.index(game[0][1].downcase + game[1][1].downcase) ? game[0] : game[1]
end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    return rps_game_winner(tournament)
  end
  rps_game_winner [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
end

