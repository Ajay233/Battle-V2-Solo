class Player
  attr_reader :name, :hp
  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

# Private method??
  def receive_damage
    @hp -= rand(1..10)
  end

end
