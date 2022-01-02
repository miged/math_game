require './player'
require './game'

winner = 0
game = Game.new

# Game loop
while winner.zero?
  puts game.new_problem
  answer = $stdin.gets.chomp

  puts game.evaluate(answer)
  puts game.display_score

  winner = game.winner
end

puts game.display_winner(winner)
