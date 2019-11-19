class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100

  def initialize(name = String.new)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_hit
    @hp -= 10
  end 
end
