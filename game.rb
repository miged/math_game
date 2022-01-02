class Game
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = 1
  end

  def new_problem
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2

    display_problem
  end

  def evaluate(answer)
    message = ""
    if @answer == answer.to_i
      message = "Player #{@current_player}: Correct!"
    else
      message = "Player #{@current_player}: Wrong!"
      lose_life
    end

    if @current_player == 1
      @current_player = 2
    else
      @current_player = 1
    end

    message
  end

  def lose_life
    if @current_player == 1
      @player1.lives -= 1
    else
      @player2.lives -= 1
    end
  end

  def winner
    if @player2.lives == 0
      1
    elsif @player1.lives == 0
      2
    else
      0
    end
  end

  def display_score
    "P1: #{@player1.to_s} vs P2: #{@player2.to_s}"
  end

  def display_problem
    "Player #{@current_player}: What does #{@num1} + #{@num2} equal?"
  end

  def display_winner(winner)
    if winner == 1
      lives = @player1.to_s
    else winner == 2
      lives = @player2.to_s
    end

    "Player #{winner} wins with a score of #{lives}\n--- GAME OVER ---"
  end
end
