


class Player
  
  attr_reader :id
  attr_accessor :lives

  def initialize(id)
    @id = id
    @lives = 3
  end

  def loser?
    lives == 0
  end

end