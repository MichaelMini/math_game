class Player

  def initialize(name)
    @lifes = 3
    @name = name
  end

  attr_reader :name
  attr_accessor :lifes

  def alive?
    @lifes > 0
  end

  def score
    @lifes
  end
end