

class Turn

  def initialize()
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def question(id)
    question = "Player #{id}: What does #{@number1} + #{@number2} equal"
  end

  def correct?(response, id)
    @answer == response
  end
end