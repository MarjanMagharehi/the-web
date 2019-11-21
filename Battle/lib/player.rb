class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100
  DEFAULT_HIT = 10

  def initialize(name = String.new)
    @name = name
    @hp = DEFAULT_HP
    @hit = DEFAULT_HIT
  end

  # def attack(player)
  #   player.receive_hit
  # end

  def receive_hit
    @hp -= @hit
  end
end
