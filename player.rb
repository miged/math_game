class Player
  LIVES = 3
  attr_accessor :lives

  def initialize
    @lives = LIVES
  end

  def to_s
    "#{@lives}/#{LIVES}"
  end
end
