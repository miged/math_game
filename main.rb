require './player'
require './game'

winner = nil
game = Game.new

# Game loop
while !winner
  puts game.new_problem
  answer = $stdin.gets.chomp

  puts game.evaluate(answer)
  puts game.display_score

  winner = game.winner
end

puts game.display_winner(winner)
