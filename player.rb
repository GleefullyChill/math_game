


class player
  
  attr_reader :id
  attr_accessor :score

  def initialize(id)
    @id = id
    @score = 3
  end

  def loser?
    score == 0
  end

end