class Game
  def initialize
    @players = [Player.new, Player.new]
    @current_player = 0
  end

  def new_problem
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2

    output_problem
  end

  def evaluate(answer)
    if @answer == answer.to_i
      message = "Player #{@current_player + 1}: Correct!"
    else
      message = "Player #{@current_player + 1}: Wrong!"
      lose_life
    end

    if @current_player.zero?
      @current_player = 1
    else
      @current_player = 0
    end

    message + output_score
  end

  def lose_life
    @players[@current_player].lives -= 1
  end

  def winner
    if @players[1].lives.zero?
      0
    elsif @players[0].lives.zero?
      1
    end
  end

  def output_score
    "\nP1: #{@players[0]} vs P2: #{@players[1]}"
  end

  def output_problem
    "Player #{@current_player + 1}: What does #{@num1} + #{@num2} equal?"
  end

  def output_winner
    lives = @players[winner].to_s
    "Player #{winner + 1} wins with a score of #{lives}\n--- GAME OVER ---"
  end

  def output_new_turn
    "--- NEW TURN ---"
  end
end
