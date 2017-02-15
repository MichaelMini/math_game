class Player

  def initialize(name)
    @lifes = 3
    @name = name
  end

  attr_reader :name
  attr_accessor :lifes

  def alive?
    # if @lifes == 0
    #   false
    # else
    #   true
    # end

    @lifes > 0
  end

  def score
    @lifes
  end
end